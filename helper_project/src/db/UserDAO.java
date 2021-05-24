package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.userBeans.UserBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import db.userBeans.UserBean;
import db.DBConnection;

public class UserDAO {
	private static UserDAO instance = new UserDAO();

	public static UserDAO getInstance() {
		return instance;
	}

	public int registerCheck(String key, String value) {// 아이디 중복체크
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x=-1;
		String sql = null;
		
		if(key.equals("id")) {
			sql = "select * from users where ID = ?";
		}
		else if(key.equals("nick")) {
			sql = "select * from users where NICK = ?";
		}

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, value);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x =1;// 이미 존재하는 회원
			} else {
				x = -1;// 해당아이디 또는 닉네임 없음 (가입가능한 회원아이디)
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					pstmt.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return x;// db오류
	}

	public boolean register(UserBean user) {// 회원가입
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		boolean isSuccess = false;

		String sql = "CALL ADD_USER(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			conn=DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getNick());
			pstmt.setString(3, user.getId());
			pstmt.setString(4, user.getPw());
			pstmt.setInt(5, user.getGender());
			pstmt.setInt(6, user.getBirth_yy());
			pstmt.setInt(7, user.getBirth_mm());
			pstmt.setInt(8, user.getBirth_dd());
			pstmt.setString(9, user.getEmail());
			pstmt.setString(10, user.getLocation_first_name());
			pstmt.setString(11, user.getLocation_second_name());
			pstmt.setString(12, user.getLocation_addr());
			pstmt.setString(13, user.getLocation_detail());
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return isSuccess;
	}

	public int login(String id, String pw) {// 로그인
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select pw,no from users where id=?";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(pw))
					return rs.getInt("no");// 로그인성공
				else
					return 0;// 비밀번호 불일치
			}
			return -1; // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -2;// db오류

	}
	public UserBean getuser(String id) {//회원정보 불러오기
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="SELECT * FROM GET_USER_INFO WHERE ID = ?";
		UserBean user = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				user = new UserBean();
				user.setNo(rs.getInt("NO"));
				user.setName(rs.getString("NAME"));
				user.setNick(rs.getString("NICK"));
				user.setId(rs.getString("ID"));
				user.setPw(rs.getString("PW"));
				user.setGender(rs.getInt("GENDER"));
				user.setBirth_yy(rs.getInt("BIRTH_YY"));
				user.setBirth_mm(rs.getInt("BIRTH_MM"));
				user.setBirth_dd(rs.getInt("BIRTH_DD"));
				user.setEmail(rs.getString("EMAIL"));
				user.setPoint(rs.getInt("POINT"));
				user.setGrade(rs.getString("GRADE"));
				user.setLocation_first_name(rs.getString("LOCATION_FRIST_NAME"));
				user.setLocation_second_name(rs.getString("LOCATION_SECOND_NAME"));
				user.setLocation_addr(rs.getString("LOCATION_ADDR"));
				user.setLocation_detail(rs.getString("LOCATION_DETAIL"));
				user.setCreated_at(rs.getTimestamp("CREATED_AT"));
				user.setCountry_code(rs.getInt("COUNTRY_CODE"));	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return user;
	}

	public UserBean findId(String name, String email) throws Exception {// 아이디 찾기
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		UserBean id = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select id from users where name = ? " + "and email =?");
			pstmt.setString(1,name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = new UserBean();
				id.setId(rs.getString("id"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		return id;
	}

	public UserBean findPw(String id, String email) throws Exception {// 비밀번호 찾기
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		UserBean pw = null;

		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement("select pw from users where id = ? " + "and email =?");
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pw = new UserBean();
				pw.setPw(rs.getString("pw"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return pw;
	}
	public boolean updateUser(UserBean user) {//회원정보 수정
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql = "CALL MODIFY_USER(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		boolean isSuccess = false;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, user.getNo());
			pstmt.setString(2, user.getPw());
			pstmt.setInt(3, user.getBirth_yy());
			pstmt.setInt(4, user.getBirth_mm());
			pstmt.setInt(5, user.getBirth_dd());
			pstmt.setString(6, user.getEmail());
			pstmt.setString(7, user.getLocation_first_name());
			pstmt.setString(8, user.getLocation_second_name());
			pstmt.setString(9, user.getLocation_addr());
			pstmt.setString(10, user.getLocation_detail());
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return isSuccess;
	}
	public boolean deleteUser(String no) {//회원탈퇴
		
		boolean isSuccess = false;
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql = "CALL DELETE_USER(?)";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate() == 0) {
				isSuccess = true;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return isSuccess;
	}
	/*---------------관리자 로그인----------------------*/
	public boolean admin_login(String admin_id, String admin_pass) {
		boolean b = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from admin where admin_id = ? and admin_pass = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, admin_id);
			pstmt.setString(2, admin_pass);
			rs = pstmt.executeQuery();
			b = rs.next();
		} catch (Exception e) {
			System.out.println("admin_login err : " + e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {

			}
		}

		return b;
	}
}
