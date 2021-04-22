package magic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
	
private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}
	
	public int insertBoard(BoardBean board) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		ResultSet rs=null;
	
		int number;
		int re = -1;
		
		try {
			con = getConnection(); 
			
			sql="SELECT MAX(B_NUMBER) FROM BOARDT";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				number=rs.getInt(1)+1;
			}else {
				number=1;
			}
			
			sql = "insert into boardT values(?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,number);
			pstmt.setString(2,HanConv.toKor(board.getName()));
			pstmt.setString(3,HanConv.toKor(board.getEmail()));
			pstmt.setString(4,HanConv.toKor(board.getTitle()));
			pstmt.setString(5,HanConv.toKor(board.getContent()));
			pstmt.setTimestamp(6,board.getDate());
			pstmt.setInt(7,board.getB_hit());
			pstmt.setString(8,board.getB_pwd());
			pstmt.executeUpdate();
			
			re = 1 ;
			pstmt.close();
			con.close();
			
		}catch(Exception e){
			System.out.println("½ÇÆÐ");
			e.printStackTrace();
		}
		return re;
	}
	public ArrayList<BoardBean> listBoard(){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		ArrayList<BoardBean> boardList = new ArrayList<BoardBean>();
		
		try {
			con = getConnection();
			stmt = con.createStatement();
			String sql = "select * from boardT order by b_number";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardBean board = new BoardBean();
				
				board.setNumber(rs.getInt(1));
				board.setName(rs.getString(2));
				board.setEmail(rs.getString(3));
				board.setTitle(rs.getString(4));
				board.setContent(rs.getString(5));
				board.setDate(rs.getTimestamp(6));
				board.setB_hit(rs.getInt(7));
				board.setB_pwd(rs.getString(8));
				
				boardList.add(board);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return boardList;
	}
	public BoardBean getBoard(int number){
		
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		String sql= null;
		String sql2= null;
		
		BoardBean board = new BoardBean();
		
		try {		
			con = getConnection();
			
			sql2 = "update boardt set b_hit = b_hit+1 where b_number = ?";
			pstmt2 = con.prepareStatement(sql2);
			pstmt2.setInt(1,number);
			pstmt2.executeUpdate();
			

			sql = "select * from boardT where b_number = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,number);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board.setNumber(rs.getInt(1));
				board.setName(rs.getString(2));
				board.setEmail(rs.getString(3));
				board.setTitle(rs.getString(4));
				board.setContent(rs.getString(5));
				board.setDate(rs.getTimestamp(6));
				board.setB_hit(rs.getInt(7));
				board.setB_pwd(rs.getString(8));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return board ;
	}
	public int deleteBoard(String b_pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs=null;
		String sql = null;
		String sql2 = null;
		int re = -1;
		
		BoardBean board = new BoardBean();
		
		try {		
			con = getConnection();
			
			sql = "select * from boardt where b_number = ?";
			
			sql2 = "delete from boardt where b_number = ?";
			pstmt = con.prepareStatement(sql2);
			rs=pstmt.executeQuery();
			pstmt.setInt(1,board.getNumber());
			pstmt.executeUpdate();
			
			if(rs.next()) {
				re = 1;
			}
			else {
				re = -1;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}

		return re;
	}

}

