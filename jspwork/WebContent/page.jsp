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
	<%!
	Date date = new Date();
	int x = 5; 
	%>
	<%!
	int Math (int a){
		return a * a ;} 
		%>
		<%=date %><br>
	5의제곱근<%=  Math(x) %>
</body>
</html>