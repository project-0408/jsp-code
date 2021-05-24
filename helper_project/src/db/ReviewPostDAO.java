package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.reviewBeans.ReviewPostBean;

public class ReviewPostDAO {
	private static ReviewPostDAO instance = new ReviewPostDAO();
	
	public static ReviewPostDAO getInstance() {
		return instance;
	}
	public int insertReview(ReviewPostBean rb) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "";
		int re=-1;
		try {
			con = DBConnection.getConnection();
			
			sql="INSERT INTO REVIEW_BOARD(NO, CREATOR_NO, TITLE, DETAIL, JOB_POST_NO) VALUES(REVIEW_BOARD_NO_SEQ.nextval, ?, ?, ?, ?)";
			int creator = rb.getCreator();
			String title = rb.getReview_titile();
			String review = rb.getReview_detail();
			int jobPostNo = rb.getJob_post();
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, creator);
			pstmt.setString(2, title);
			pstmt.setString(3, review);
			pstmt.setInt(4, 1);
//			pstmt.setInt(4, jobPostNo);
			pstmt.executeUpdate();
			re=1;	
			
			System.out.println("리뷰작성 성공");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰작성 실패");
			re=-1;
			
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();	
			}
		}
		
		return re;
	}
}
