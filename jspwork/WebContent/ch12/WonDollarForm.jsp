<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="WonDollar" class ="question.WonDollar"></jsp:useBean>
<jsp:setProperty property="won" name="WonDollar"/>
<h4>당신이 입력한 정보입니다.</h4>
<%=WonDollar.getWon()%> 원은 $<%=WonDollar.process()%> 달러 입니다 

</body>
</html>