<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <jsp:useBean id = "circle" class = "area.Circle2"></jsp:useBean>
    <jsp:setProperty property = "radius" name = "circle"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>당신이 입력한 정보 입니다.</h4>
	<% out.println("반지름" + circle.getRadius() + "원의 면적은 " + circle.process(circle.getRadius())); %>
</body>
</html>