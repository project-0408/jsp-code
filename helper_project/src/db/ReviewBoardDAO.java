package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import db.reviewBeans.ReviewPostBean;

public class ReviewBoardDAO {
	private static ReviewBoardDAO instance = new ReviewBoardDAO();
	
	public static ReviewBoardDAO getInstance() {
		return instance;
	}
	public ReviewPostBean updateReview(String review_post_no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "UPDATE REVIEW_BOARD SET TITLE = ?, DETAIL = ? WHERE NO = ?";
		ReviewPostBean rpb = new ReviewPostBean();
		String title = rpb.getReview_titile();
		String detail = rpb.getReview_detail();
		try {
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(review_post_no));
			pstmt.setString(2, title);
			pstmt.setString(3, detail);
			
			rs=pstmt.executeQuery();
		}catch (Exception e) {
			// TODO: handle exception
		}
		sql = "SELECT TITLE, DETAIL FROM REVIEW_BOARD WHERE NO = ?";
		try {
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(review_post_no));
			rs=pstmt.executeQuery();
			if (rs.next()) {
				rpb=new ReviewPostBean();
				rpb.setReview_titile(rs.getString("TITLE"));
				rpb.setReview_detail(rs.getString("DETAIL"));
			}
		} catch (Exception e) {
			System.out.println("실패" + e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return rpb;
		
	}
	public ReviewPostBean getPost(String review_post_no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM REVIEW_BOARD WHERE NO = ?";
		ReviewPostBean rpb = null;
		try {
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(review_post_no));
			rs=pstmt.executeQuery();
			if (rs.next()) {
				rpb=new ReviewPostBean();
				rpb.setNo(rs.getInt(1));
				rpb.setCreated_at(rs.getTimestamp(2));
				rpb.setCreator(rs.getInt(3));
				rpb.setReview_titile(rs.getString(4));
				rpb.setReview_hits(rs.getInt(5));
				rpb.setReview_score(rs.getInt(6));
				rpb.setReview_detail(rs.getString(7));
				rpb.setJob_post(rs.getInt(8));
//				rpb.setNo(rs.getInt("NO"));
//				rpb.setCreated_at(rs.getTimestamp("CREATED_AT"));
//				rpb.setCreator(rs.getInt("CREATOR_NO"));
//				rpb.setReview_titile(rs.getString("TITLE"));
//				rpb.setReview_hits(rs.getInt("HITS"));
//				rpb.setReview_score(rs.getInt("REVIEW_SCORE"));
//				rpb.setReview_detail(rs.getString("DETAIL"));
//				rpb.setJob_post(rs.getInt("JOB_POST_NO"));
				
			}
		} catch (Exception e) {
			System.out.println("실패" + e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return rpb;
	}
	
	public ArrayList<ReviewPostBean> getList(){
//		ArrayList<ReviewPostBean> getList = new ArrayList<ReviewPostBean>();
//		ArrayList<ReviewPostBean> rbl = new ArrayList<ReviewPostBean>();
//		ArrayList<ReviewBoard> rblist = new ArrayList<ReviewBoard>();
		ArrayList<ReviewPostBean> rbl = new ArrayList<ReviewPostBean>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ReviewPostBean rpb = new ReviewPostBean();
		try {
//			String sql="SELECT NO, TITLE, TO_TIMESTAMP(TO_CHAR(CREATED_AT, 'YY-MM-DD')) AS \"CREATED_AT\", HITS , CREATOR_NO, DETAIL, JOB_POST_NO FROM REVIEW_BOARD";
			String sql="SELECT NO, TITLE, CREATED_AT, HITS , CREATOR_NO, DETAIL, JOB_POST_NO FROM REVIEW_BOARD";
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
//				rb.set(rs.getString(1));
//				rb.setCreatedat(rs.getTimestamp(2));
//				rb.setHits(rs.getInt(3));
				rpb.setNo(rs.getInt("NO"));
				rpb.setReview_titile(rs.getString("TITLE"));
				rpb.setCreated_at(rs.getTimestamp("CREATED_AT"));
				rpb.setReview_hits(rs.getInt("HITS"));
				rpb.setCreator(rs.getInt("CREATOR_NO"));
				rpb.setReview_detail(rs.getString("DETAIL"));
				rpb.setJob_post(rs.getInt("JOB_POST_NO"));
				rbl.add(rpb);
				
				System.out.println(rs.getInt(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getTimestamp(3));
				System.out.println(rs.getInt(4));
				System.out.println(rs.getInt(5));
				System.out.println(rs.getString(6));
				System.out.println(rs.getInt(7));
			}
			
		} catch (Exception e) {
			System.out.println("목록실패 : " + e);
		}finally {
			try {
				if(con!=null)con.close();
				if(pstmt!=null)pstmt.close();
				if(rs!=null)rs.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return rbl;
	}
	
}