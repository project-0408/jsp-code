package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.jobBoardBeans.*;

public class JobPostDAO {
	private static JobPostDAO instance = new JobPostDAO();
	private static int total_count;
	private static int count;
	
	public static JobPostDAO getInstance() {
		return instance;
	}
	
	public void setCount(String location_first, String location_second) {
		
		total_count = 0;
		count = 1;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query;
		if(location_first == null) {
			query = "SELECT COUNT(*) AS \"TOTAL_COUNT\" FROM JOB_BOARD WHERE ? = ?";
			location_first = "1";
			location_second = "1";
		}
		else {
			query = "SELECT COUNT(*) AS \"TOTAL_COUNT\" FROM JOB_BOARD WHERE LOCATION_NO = GET_LOCATION_NO(?, ?)";
		}
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, location_first);
			pstmt.setString(2, location_second);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				total_count = rs.getInt("TOTAL_COUNT");
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO setCount() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO setCount() CLOSE ERROR: "+e);
			}
		}
		
	}
	
	public ArrayList<JobPostSubBean> getList(String location_first, String location_second){
		System.out.println("start count: "+count);
		
		String where;
		if(location_first == null) {
			where= " WHERE ? = ?)";
			location_first = "1";
			location_second = "1";
		}
		else {
			where = " WHERE JOB_LOCATION_NO = GET_LOCATION_NO(?, ?))";
		}

		if(total_count<count) {
			return null;
		}
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT * FROM (SELECT ROW_NUMBER() over (ORDER BY J.CREATED_AT DESC ) AS \"ROWNUM\","
				+ " J.*"
				+ " FROM GET_SUB_LIST J"
				+ where
				+ " WHERE \"ROWNUM\" BETWEEN ? AND ?";
				
		ArrayList<JobPostSubBean> jpl = new ArrayList<JobPostSubBean>();
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, location_first);
			pstmt.setString(2, location_second);
			pstmt.setInt(3, count);
			pstmt.setInt(4, count+9);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				JobPostSubBean jp = new JobPostSubBean();
				
				jp.setNo(rs.getInt("JOB_NO"));
				
				jp.setJob_location_first_name(rs.getString("JOB_LOCATION_FIRST_NAME"));
				jp.setJob_location_second_name(rs.getString("JOB_LOCATION_SECOND_NAME"));
				
				jp.setCreator_no(rs.getInt("CREATOR_NO"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				
				jp.setJob_titile(rs.getString("JOB_TITLE"));
				jp.setJob_pay(rs.getInt("JOB_PAY"));
				jp.setJob_day(rs.getString("JOB_DAY"));
				jp.setJob_time_start(rs.getString("JOB_TIME_START"));
				jp.setJob_time_end(rs.getString("JOB_TIME_END"));

				jp.setCreated_at(rs.getString("CREATED_AT"));
				
				jpl.add(jp);
			}
			count += 10;
			
		} catch (Exception e) {
			System.out.println("JobPostDAO getList() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO getList() CLOSE ERROR: "+e);
			}
		}
		
		return jpl;
	}

	public JobPostBean getPost(String job_post_no){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT * FROM GET_POST WHERE JOB_NO = ?";
		
		JobPostBean jp = null;
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, Integer.valueOf(job_post_no));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				jp = new JobPostBean();
				jp.setJob_title(rs.getString("JOB_TITLE"));
				jp.setCreated_at(rs.getString("CREATED_AT"));

				jp.setCreator_no(rs.getInt("CREATOR_NO"));
				jp.setCategory(rs.getInt("CATEGORY"));
				jp.setCreator_nick(rs.getString("CREATOR_NICK"));
				jp.setCreator_grade(rs.getString("GRADE"));
				
				jp.setJob_day(rs.getString("JOB_DAY"));
				
				jp.setJob_time_start(rs.getString("JOB_TIME_START"));
				jp.setJob_time_end(rs.getString("JOB_TIME_END"));
				jp.setLocation_first_name(rs.getString("JOB_LOCATION_FIRST_NAME"));
				jp.setLocation_second_name(rs.getString("JOB_LOCATION_SECOND_NAME"));
				jp.setLocation_addr(rs.getString("JOB_LOCATION_ADDR"));
				jp.setLocation_detail(rs.getString("JOB_LOCATION_DETAIL"));

				jp.setJob_num_of_people(rs.getInt("JOB_NUM_OF_PEOPLE"));
				jp.setJob_pay(rs.getInt("JOB_PAY"));				
				jp.setJob_detail(rs.getString("JOB_DETAIL"));
				
//				String temp = rs.getString("JOB_PART_TIME_LIST");
//				if(temp != null) {
//					String[] people = rs.getString("JOB_PART_TIME_LIST").split(",");
//					int[] job_people = new int[jp.getJob_num_of_people()];
//					for(int index=0; index<people.length; index++) {
//						job_people[index] = Integer.valueOf(people[index]);
//					}
//					jp.setJob_people(job_people);
//				} else {
//					jp.setJob_people(null);
//				}
			}

		} catch (Exception e) {
			System.out.println("JobPostDAO getPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO getPost() CLOSE ERROR: "+e);
			}
		}
		
		return jp;
	}
	
	public boolean addPost(JobPostBean jp) {
		
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String query = "CALL INSERT_JOB_POST(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, jp.getCreator_no());
			pstmt.setInt(2, jp.getCategory());
			pstmt.setString(3, jp.getJob_title());
			pstmt.setString(4, jp.getJob_day());
			pstmt.setString(5, jp.getJob_time_start());
			pstmt.setString(6, jp.getJob_time_end());
			pstmt.setString(7, jp.getLocation_first_name());
			pstmt.setString(8, jp.getLocation_second_name());
			pstmt.setString(9, jp.getLocation_addr());
			pstmt.setString(10, jp.getLocation_detail());
			pstmt.setInt(11, jp.getJob_pay());
			pstmt.setInt(12, jp.getJob_num_of_people());
			pstmt.setString(13, jp.getJob_detail());
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
			
		} catch (Exception e) {
			System.out.println("JobPostDAO addPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO addPost() CLOSE ERROR: "+e);
			}
		}
		
		return isSuccess;
	}

	public boolean deletePost(String job_post_no) {
		
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String query = "DELETE FROM JOB_BOARD WHERE NO = ?";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, job_post_no);
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			System.out.println("JobPostDAO deletePost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO deletePost() CLOSE ERROR: "+e);
			}
		}
		System.out.println(isSuccess);
		return isSuccess;
	}

	public boolean modifyPost(JobPostBean jp, String job_post_no) {
		boolean isSuccess = false;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String query = "CALL MODIFY_JOB_POST(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, jp.getCategory());
			pstmt.setString(2, jp.getJob_title());
			pstmt.setString(3, jp.getJob_day());
			pstmt.setString(4, jp.getJob_time_start());
			pstmt.setString(5, jp.getJob_time_end());
			pstmt.setString(6, jp.getLocation_first_name());
			pstmt.setString(7, jp.getLocation_second_name());
			pstmt.setString(8, jp.getLocation_addr());
			pstmt.setString(9, jp.getLocation_detail());
			pstmt.setInt(10, jp.getJob_pay());
			pstmt.setInt(11, jp.getJob_num_of_people());
			pstmt.setString(12,	jp.getJob_people());
			pstmt.setString(13, jp.getJob_detail());
			pstmt.setString(14, job_post_no);
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
			
			if(con != null) con.close();
			if(pstmt != null) pstmt.close();
			
		} catch (Exception e) {
			System.out.println("JobPostDAO modifyPost() ERROR: "+e);
		} finally {
			try {
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				System.out.println("JobPostDAO modifyPost() CLOSE ERROR: "+e);
			}
		}
		System.out.println(isSuccess);
		return isSuccess;
	}
}
