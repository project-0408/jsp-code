<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%!
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<table border = "1">
	<tr>
		<td>컬럼명</td>
		<td>컬럼형식</td>
		<td>컬럼길이</td>
		<td>널값여부</td>
	</tr>
	<%
	String table = request.getParameter("table");
	table = table.toUpperCase();
    String sql = "SELECT * FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = ?";
    
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, user, password);
		pstmt = con.prepareStatement(sql);
		pstmt.setNString(1,table);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			%> 
			<tr>
			<td><%=rs.getString("column_name") %></td>
			<td><%=rs.getString("data_type") %></td>
			<td><%=rs.getString("data_length")%></td>
			<td><%=rs.getString("nullable") %></td>
			</tr>
			<%
		}
	} catch (SQLException ex) {
		out.print("SQLException: " + ex.getMessage());
	}
	%>
</table>
</body>
</html>