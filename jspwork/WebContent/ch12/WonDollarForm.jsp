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
<h4>����� �Է��� �����Դϴ�.</h4>
<%=WonDollar.getWon()%> ���� $<%=WonDollar.process()%> �޷� �Դϴ� 

</body>
</html>