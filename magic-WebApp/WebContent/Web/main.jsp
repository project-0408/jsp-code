<%@page import="magic.MemberBean"%>
<%@page import="magic.MemberDBBean"%>
<%@page import="magic.HanConv"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(session.getAttribute("Member") == null){
		%> 
		<jsp:forward page="login.jsp"></jsp:forward>
		<% 
	}
%>
<%
String id = request.getParameter("mem_uid");
MemberDBBean manager = MemberDBBean.getInstance();
MemberBean mb = manager.getMember(id);

String uid = (String)session.getAttribute("uid");
String name = (String)session.getAttribute("name");
%>
<table border="1" align="center">
<form method = "post" action = "logout.jsp">
	<tr>
		<td>
			안녕하세요. <%= name %>(<%=uid %>)님
		</td>
	</tr>
	<tr>
		<td>
			<input type = "submit" value = "로그아웃">
			<input type = "button" value = "회원정보변경" onclick = "javascript:window.location='memberUpdate.jsp'">
		</td>
	</tr>
</form>
</table>
</body>
</html>