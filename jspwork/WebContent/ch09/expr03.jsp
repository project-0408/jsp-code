<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% Calendar cal = Calendar.getInstance();  
			
	%>
	<%=cal.get(Calendar.YEAR) -1%>
	<%=cal.get(Calendar.MONTH) -2%>
	<%=cal.get(Calendar.DATE) -3%>
</body>
</html>