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
			
		int id = board.getNumber();
		int ref = board.getB_ref();
		int step = board.getB_step();
		int level = board.getB_level();
		
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
			
			if(id!=0) {
				sql="update boardT set b_step = b_step + 1 where b_ref=? and b_step > ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, step);
				pstmt.executeUpdate();
				
				step = step+1;
				level = level+1;
			}
			else {
				ref = number;
				step = 0;
				level = 0;
			}
			sql = "insert into boardT values(?,?,?,?,?,?,?,?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,number);
			pstmt.setString(2,HanConv.toKor(board.getName()));
			pstmt.setString(3,HanConv.toKor(board.getEmail()));
			pstmt.setString(4,HanConv.toKor(board.getTitle()));
			pstmt.setString(5,HanConv.toKor(board.getContent()));
			pstmt.setTimestamp(6,board.getDate());
			pstmt.setInt(7,board.getB_hit());
			pstmt.setString(8,board.getB_pwd());
			pstmt.setString(9,board.getB_ip());
			pstmt.setInt(10,ref);
			pstmt.setInt(11,step);
			pstmt.setInt(12,level);
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
			String sql = "select * from boardT order by b_ref desc,b_step asc";
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
				board.setB_ip(rs.getString(9));
				board.setB_ref(rs.getInt(10));
				board.setB_step(rs.getInt(11));
				board.setB_level(rs.getInt(12));
				
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
				board.setB_ip(rs.getString(9));
				board.setB_ref(rs.getInt(10));
				board.setB_step(rs.getInt(11));
				board.setB_level(rs.getInt(12));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return board ;
	}
	public int deleteBoard(int number,String b_pwd){
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int re=-1;
		String pwd="";
		
		try {
			con = getConnection();
			sql="select b_pwd from boardt where b_number=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,number);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				
			pwd = rs.getString(1);
				
				if (!pwd.equals(b_pwd)) {
					re=0;
				}else {
					sql="delete boardt where b_number = ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1,number);
					pstmt.executeUpdate();
					re=1;
				}
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
	public int editBoard(BoardBean board) {
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int re=-1;
		String pwd="";
		
		try {
			con = getConnection();
			sql="select b_pwd from boardt where b_number = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,board.getNumber());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				
				pwd = rs.getString(1);
				
				if (!pwd.equals(board.getB_pwd())) {
					
					re=0;
					
				}else {
					sql="update boardt set b_name=?, b_email=?, b_title=?, b_content=? where b_number=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, HanConv.toKor(board.getName()));
					pstmt.setString(2, HanConv.toKor(board.getEmail()));
					pstmt.setString(3, HanConv.toKor(board.getTitle()));
					pstmt.setString(4, HanConv.toKor(board.getContent()));
					pstmt.setInt(5, board.getNumber());
					pstmt.executeUpdate();
					re=1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}

}

