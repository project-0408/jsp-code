<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import = "myUtil.HanConv" %>
<%! 
    Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "root";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String id = "";
	String pw = "";
	String name = "";
	String p1 = "";
	String p2 = "";
	String p3 = "";
	String sclass = "";
	
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	name = request.getParameter("name");
	sclass = request.getParameter("mclass");
	p1 = request.getParameter("phone1");
	p2 = request.getParameter("phone2");
	p3 = request.getParameter("phone3");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url, user, password);
		stmt = con.createStatement();
		StringBuffer insertQuery = new StringBuffer();
		insertQuery.append("insert into member3 values('");
		insertQuery.append(id + "','");
		insertQuery.append(pw + "','");
		insertQuery.append(HanConv.toKor(name)+ "','");
		insertQuery.append(sclass + "','");
		insertQuery.append(p1 + "-" + p2 + "-"+p3 + "')");
		
		System.out.println(insertQuery.toString());
		
		int re = stmt.executeUpdate(insertQuery.toString());
		
		if(re==1){
			%>
			추가 성공
			<br>
			<a href = "addFormMySql.html">추가작업</a>
			<a href = "viewMember3Sql.jsp">검색작업</a>		
			<%
		}
			else {
				%>
				<font color = "red">추가 실패</font>
				<% 
			}
		
	}catch(SQLException se){
		se.printStackTrace();
		%>
		서버 불량 잠시 후 다시시도
		<% 
	}
%>

</body>
</html>