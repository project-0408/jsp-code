package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.reviewBeans.ReviewBoard;
import db.reviewBeans.ReviewPostBean;

public class ReviewBoardDAO {
	private static ReviewBoardDAO instance = new ReviewBoardDAO();
	
	public static ReviewBoardDAO getInstance() {
		return instance;
	}
	
	public int deleteReivew(String review_no, ReviewPostBean rb) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "DELETE FROM REVIEW_BOARD WHERE NO = ? AND CREATOR_NO = ?";
		int result = -1;
		try {
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, Integer.valueOf(review_no));
			pstmt.setInt(2, rb.getCreator());
			result = pstmt.executeUpdate();
			System.out.println("삭제성공");
		}catch (Exception e) {
			System.out.println("리뷰삭제실패");
			// TODO: handle exception
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return result;
		
	}
	
	public int updateReview(String review_no, ReviewPostBean rb) {
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="UPDATE REVIEW_BOARD SET TITLE = ?, DETAIL = ? WHERE NO = ?";
		int result=-1;
		try {
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, rb.getReview_titile());
			pstmt.setString(2, rb.getReview_detail());
			pstmt.setInt(3, Integer.valueOf(review_no));
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				if(con!=null)con.close();
				if(pstmt!=null)con.close();
				if(rs!=null)con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
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
	
	
	
	public ArrayList<ReviewBoard> getList(){
		ArrayList<ReviewBoard> rblist = new ArrayList<ReviewBoard>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="SELECT NO, TITLE, CREATED_AT, HITS , CREATOR_NO, DETAIL, JOB_POST_NO FROM REVIEW_BOARD";
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				ReviewBoard rb = new ReviewBoard();
				rb.setNo(rs.getInt("NO"));
				rb.setTitle(rs.getString("TITLE"));
				rb.setCreatedat(rs.getTimestamp("CREATED_AT"));
				rb.setHits(rs.getInt("HITS"));
				rb.setCreator_no(rs.getInt("CREATOR_NO"));
				rb.setReview(rs.getString("DETAIL"));
				rb.setJob_post_no(rs.getInt("JOB_POST_NO"));
				rblist.add(rb);
			}
//            for(int i = 0 ; i <rblist.size() ; i++){
//
//                ReviewBoard rb = rblist.get(i);
//
//                System.out.println(rb.getTitle() + "\t" + rb.getHits() + "\t" + rb.getCreatedat() + "\t");
//         }
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
		return rblist;
	}
	
}
