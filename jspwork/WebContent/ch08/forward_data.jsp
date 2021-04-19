<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
	String s = request.getParameter("url");
	int a = Integer.valueOf(s); 
		for(int i = 1; i<=9; i++){ 
		out.print(request.getParameter("url")+"*"+i + "=" + a * i +"<br>");
		}
	%>
	
	
	
</body>
</html>