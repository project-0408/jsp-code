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
	<h4>����� �Է��� ���� �Դϴ�.</h4>
	<% out.println("������" + circle.getRadius() + "���� ������ " + circle.process(circle.getRadius())); %>
</body>
</html>