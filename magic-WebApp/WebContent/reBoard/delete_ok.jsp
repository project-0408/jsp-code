<%@page import="magic.BoardBean"%>
<%@page import="magic.BoardDBBean"%>
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
	BoardDBBean bdb = BoardDBBean.getInstance();
	int  re = bdb.getBoard(Integer.parseInt(request.getParameter("b_pwd")));
	
	if(){
		
	}
	%>
</body>
</html>