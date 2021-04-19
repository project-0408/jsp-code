<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 정보 수정</title>
</head>
<body>
	<%!
		Connection con = null;
		DataSource ds = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	%>
	<%
	try{
		Context ctx = new InitialContext();
		ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		con = ds.getConnection();
		System.out.println("DBCP 연동 성공");
		
		StringBuffer selectQuery = new StringBuffer();
		selectQuery.append("select name, class, tel from member2 where id=?");
		String id = request.getParameter("id");
		ps = con.prepareStatement(selectQuery.toString());
		ps.setString(1,id);
		rs = ps.executeQuery();
		
		if(rs.next()){
			%>
			<form action="updateProcess.jsp" method="post">
				아이디 : <input type = "text" name = "id" readonly value="<%=id%>"><br>
				이 름  : <input type = "text" name = "name" value="<%=rs.getString("name")%>"><br>
				회원등급 : <input type = "text" name = "mclass" value="<%=rs.getString("class")%>"><br>
				전화번호 : <input type = "text" name = "tel" value="<%=rs.getString("tel")%>"><br>
				<input type = "submit" value="수정">
				<a href = "viewMember.jsp">목록보기</a>
			</form>
			<% 
		}
		else{
			%>
			<font color = "red">아이디 없음</font>
			<a href = "viewMember.jsp">목록보기</a>
			<%		
			}
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