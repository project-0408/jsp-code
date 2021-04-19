<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침 합니다.</p>
	<%
	response.setIntHeader("Refresh", 5);
	%>
	<p><%= new Date() %></p>
</body>
</html>