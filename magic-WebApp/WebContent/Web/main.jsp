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
			�ȳ��ϼ���. <%= name %>(<%=uid %>)��
		</td>
	</tr>
	<tr>
		<td>
			<input type = "submit" value = "�α׾ƿ�">
			<input type = "button" value = "ȸ����������" onclick = "javascript:window.location='memberUpdate.jsp'">
		</td>
	</tr>
</form>
</table>
</body>
</html>