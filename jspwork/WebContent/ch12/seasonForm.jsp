<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id = "season" class = "question.Season"></jsp:useBean>
    <jsp:setProperty property = "*" name = "season"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>����� �Է��� �����Դϴ�.</h4>
<%=season.getMon()%> ������ <%=season.process()%> �Դϴ�.

</body>
</html>