<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String Is_test = "세션에 저장된 데이터가 바로 접니다. ^오^";
	session.setAttribute("Testing",Is_test);
	session.setAttribute("MyData",10);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[세션 값을 설정하는 예제]</h3></center>
	<hr>
	세션값을 설정하는 페이지 입니다.
	<hr>
	
</body>
</html>