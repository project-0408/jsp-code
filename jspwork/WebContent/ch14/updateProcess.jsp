<%@page import="myUtil.HanConv"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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
	PreparedStatement ps = null;
	%>
	<%
	try{
	con = ((DataSource)(new InitialContext().lookup("java:comp/env/jdbc/oracle"))).getConnection();
	
	}
	catch(SQLException se){
		se.printStackTrace();
	}
	catch(NamingException ne){
		ne.printStackTrace();
	}
	
	String id ="";
	String pw ="";
	String name ="";
	String vclass ="";
	String tel ="";
	
	
	id = request.getParameter("id");
	name = request.getParameter("name");
	vclass = request.getParameter("mclass");
	tel = request.getParameter("tel");
	
	StringBuffer updateQuery = new StringBuffer();
	updateQuery.append("update member2 set name=?, class=?, tel=? where id=?");
	
	try{
		ps = con.prepareStatement(updateQuery.toString());
		ps.setString(1,HanConv.toKor(name));
		ps.setInt(2,Integer.parseInt(vclass));
		ps.setString(3,tel);
		ps.setString(4,id);
		int re = ps.executeUpdate();
		if(re==1){		
			%> 
			<%=id %>의 정보가 수정되었습니다.<br>
			[<a href ="viewMember.jsp">목록 보기</a>]
			<%
		}
		else{
			%>
			변경 실패
			<%
		}
	}
	catch(SQLException se){
		se.printStackTrace();
		%>
		서버 불랭 잠시후 다시 시도
		<%
		}
	%>
</body>
</html>