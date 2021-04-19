<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
 Connection con = null;
	DataSource ds = null;
%>
	<%
	try{
		Context ctx = new InitialContext();
		ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		con = ds.getConnection();
		System.out.println("DBCP 연동 성공");
	}
	catch(SQLException se){
		se.printStackTrace();
	}
	catch(NamingException ne){
		ne.printStackTrace();
	}
	finally{
		try{
			if(con!=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
</body>
</html>