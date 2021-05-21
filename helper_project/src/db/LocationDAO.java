package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.etcBeans.LocationBean;

public class LocationDAO {
	
	private static LocationDAO instance = new LocationDAO();
	
	public static LocationDAO getInstance() {
		return instance;
	}

	public ArrayList<LocationBean> getLocationList(String first_name){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		String query;
		if(first_name == null) {
			return null;
		} 
		else {
			query = "SELECT * FROM LOCATIONS WHERE FIRST_NAME = '?'";			
		}
		
		ArrayList<LocationBean> ll = new ArrayList<LocationBean>();
		
		try {
			con = DBConnection.getConnection();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, first_name);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				LocationBean l = new LocationBean();
				
				l.setNo(rs.getInt("NO"));
				l.setFirst_name(rs.getString("FIRST_NAME"));
				l.setSecound_name(rs.getString("SECOND_NAME"));
				
				ll.add(l);
			}
		} catch (Exception e) {
			System.out.println("LocationDAO getLocationList(String) ERROR: "+e);
		}
		return ll;
	}
}
