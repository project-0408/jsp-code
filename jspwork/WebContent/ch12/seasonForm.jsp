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
<h4>당신이 입력한 정보입니다.</h4>
<%=season.getMon()%> 월달은 <%=season.process()%> 입니다.

</body>
</html>