package db.notifyBoardBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.DBConnection;
import db.UserDAO;
import db.notifyBoardBeans.NotifyBean;

	import java.sql.Connection;

	import java.sql.PreparedStatement;

	import java.sql.ResultSet;

	import java.util.ArrayList;



	import javax.naming.Context;

	import javax.naming.InitialContext;

	import javax.sql.DataSource;

public class NoticeDAO{
	Connection con;
	PreparedStatement psmt;
	ResultSet rs;

	private static NoticeDAO instance = new NoticeDAO();
	
	public static NoticeDAO getInstance() {
		return instance;
	}
	public NoticeDAO() {
		try {
			con = DBConnection.getConnection();
			System.out.println("DBCP연결성공");
		} 
		catch (Exception e) {
			System.out.println("DBCP연결실패");
			e.printStackTrace();
		}
	}
	// 자원반납하기
	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
		} 
		catch (Exception e) {
			System.out.println("자원반납시 예외발생");
			e.printStackTrace();
		}
	}
	//전체 목록 출력
	public ArrayList<NoticeDTO> getDataAll(){
		ArrayList<NoticeDTO> list = new ArrayList<NoticeDTO>();
		try {
			con = DBConnection.getConnection();
			String sql = "select * from notify_board";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()){
				NoticeDTO dto = new NoticeDTO();
				dto.setNo(rs.getInt("no"));
				dto.setCreated_at(rs.getTimestamp("created_at"));
				dto.setCategory(rs.getString("category"));
				dto.setCreator_no(rs.getInt("creator_no"));
				dto.setTitle(rs.getString("title"));
				dto.setHits(rs.getInt("hits"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("getDataAll err:" + e);
		} finally {
			try {
				if(rs != null) rs.close();
				if(psmt != null) psmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return list;
	}
	public int insertWrite(NoticeDTO dto) {
		int affected = 0;	// 적용된 행의갯수
		try {
			
			String sql = " INSERT INTO notify_board ( " 
					+ " no, " 
					+ " category,title, detail,creator_no ) "
					+ " VALUES (" 
					+ " NOTIFY_BOARD_NO_SEQ.NEXTVAL, ?, ?, ?,?) ";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getCategory());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getDetail());
			psmt.setInt(4, dto.getCreator_no());

			affected = psmt.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return affected;
	}
	
	// 공지사항 상세보기(view)
	public NoticeDTO selectView(String no) {
		System.out.println("셀렉idx:"+no);
		NoticeDTO dto = null;
		String sql="";
		
		try {
			con = DBConnection.getConnection();
			sql = "SELECT * FROM notify_board WHERE No=?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1,Integer.valueOf(no));
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				dto = new NoticeDTO();
				dto.setNo(rs.getInt("no"));
				dto.setCreated_at(rs.getTimestamp("created_at"));
				dto.setCategory(rs.getString("category"));
				dto.setCreator_no(rs.getInt("creator_no"));
				dto.setTitle(rs.getString("title"));
				dto.setHits(rs.getInt("hits"));
				dto.setDetail(rs.getString("detail"));
			}
		} 
		catch (Exception e) {
			System.out.println("수정오류:"+e);
		}
		return dto;
	}
	// 공지사항 게시물 수정하기
	public boolean  updateEdit(NoticeDTO dto,String no) {
		boolean isSuccess = false;
		String sql="";
		try {
			con = DBConnection.getConnection();
				sql = " UPDATE notify_board SET " 
						+ " title=?, detail=? WHERE no=? ";
				psmt = con.prepareStatement(sql);
				psmt.setString(1, dto.getTitle());
				psmt.setString(2, dto.getDetail());
				psmt.setString(3,no);
				psmt.executeUpdate();
				if(psmt.executeUpdate() == 1) {
					isSuccess = true;
			}
		} 
		catch (Exception e) {
			System.out.println("수정실패"+e);
		}
		System.out.println(isSuccess);
		return isSuccess;
	}
	// 게시물 삭제하기
	public boolean delete(String no) {
		boolean isSuccess = false;
		
		try {
			String sql = "DELETE FROM notify_board WHERE NO=?";
			con = DBConnection.getConnection();
			psmt = con.prepareStatement(sql);
			psmt.setString(1, no);
		    psmt.executeUpdate();
		    
		    if(psmt.executeUpdate() == 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			System.out.println("delete중 예외발생"+e);
		}finally {
			try {
				if(rs != null) rs.close();
				if(psmt != null) psmt.close();
				if(con != null) con.close();
			} catch (Exception e2) {
				// TODO: handle exception
		}
	}
		System.out.println(isSuccess);
		return isSuccess;
	}
}
	