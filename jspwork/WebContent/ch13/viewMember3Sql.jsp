<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%!
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "root";
    String selectQuery = "SELECT * FROM MEMBER3";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border = "1">
	<tr>
		<td>아 이 디</td>
		<td>비밀번호</td>
		<td>이     름 </td>
		<td>회원구분 </td>
		<td>전화번호</td>
	</tr>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);
		stmt = con.createStatement();
		rs = stmt.executeQuery(selectQuery);
		
		while(rs.next()){
			%> 
			<tr>
			<td><%=rs.getString("id") %></td>
			<td><%=rs.getString("pw") %></td>
			<td><%=rs.getString("name") %></td>
			<td><% int n_class = rs.getInt("sclass"); 
				if(n_class==1){
					out.print("일반회원");
				}else{
					out.print("교수님");
				}
			%></td>
			<td><%=rs.getString("phone") %></td>
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