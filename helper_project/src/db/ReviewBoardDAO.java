package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.jobBoardBeans.JobPostSubBean;
//import db.reviewBeans.ReviewBoard;
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
		String sql = "SELECT R.* ,"
				+ " JB.TITLE,"
				+ " TO_CHAR(JB.TIME_DAY, 'yyyy-MM-dd')"
				+ " FROM REVIEW_BOARD R"
				+ " JOIN JOB_BOARD JB ON R.JOB_POST_NO = JB.NO"
				+ " WHERE R.NO = ?";
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
				rpb.setJob_title(rs.getString(9));
				rpb.setJob_day(rs.getString(10));
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
		ArrayList<ReviewPostBean> rblist = new ArrayList<ReviewPostBean>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="SELECT NO, TITLE, CREATED_AT, HITS , CREATOR_NO, DETAIL, JOB_POST_NO FROM REVIEW_BOARD ORDER BY CREATED_AT DESC";
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				ReviewPostBean rb = new ReviewPostBean();
				rb.setNo(rs.getInt("NO"));
				rb.setReview_titile(rs.getString("TITLE"));
				rb.setCreated_at(rs.getTimestamp("CREATED_AT"));
				rb.setReview_hits(rs.getInt("HITS"));
				rb.setCreator(rs.getInt("CREATOR_NO"));
				rb.setReview_detail(rs.getString("DETAIL"));
				rb.setJob_post(rs.getInt("JOB_POST_NO"));
				rblist.add(rb);
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
		return rblist;
	}
	public ArrayList<ReviewPostBean> getMyReviewList(int userNo){
		ArrayList<ReviewPostBean> rblist = new ArrayList<ReviewPostBean>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="SELECT * FROM(SELECT NO, TITLE, CREATED_AT, HITS , CREATOR_NO, DETAIL, JOB_POST_NO FROM REVIEW_BOARD WHERE CREATOR_NO = ? ORDER BY CREATED_AT DESC) WHERE ROWNUM <= 3";
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rs=pstmt.executeQuery();

			while (rs.next()) {
				ReviewPostBean rb = new ReviewPostBean();
				rb.setNo(rs.getInt("NO"));
				rb.setReview_titile(rs.getString("TITLE"));
				rb.setCreated_at(rs.getTimestamp("CREATED_AT"));
				rb.setReview_hits(rs.getInt("HITS"));
				rb.setCreator(rs.getInt("CREATOR_NO"));
				rb.setReview_detail(rs.getString("DETAIL"));
				rb.setJob_post(rs.getInt("JOB_POST_NO"));
				rblist.add(rb);
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
		return rblist;
	}
	public ArrayList<JobPostSubBean> getMyJobList(int userNo){
		ArrayList<JobPostSubBean> rblist = new ArrayList<JobPostSubBean>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			String sql="SELECT * FROM(SELECT NO, TITLE, CREATED_AT , CREATOR_NO FROM JOB_BOARD WHERE CREATOR_NO = ? ORDER BY CREATED_AT DESC) WHERE ROWNUM <= 3";
			con=DBConnection.getConnection();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rs=pstmt.executeQuery();

			while (rs.next()) {
				JobPostSubBean js = new JobPostSubBean();
				js.setNo(rs.getInt("NO"));
				js.setJob_titile(rs.getString("TITLE"));
				js.setCreated_at(rs.getString("CREATED_AT"));
				js.setCreator_no(rs.getInt("CREATOR_NO"));
				rblist.add(js);
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
		return rblist;
	}
}
