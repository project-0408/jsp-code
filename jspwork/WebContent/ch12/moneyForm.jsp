<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="money" class = "question.Money"></jsp:useBean>
<jsp:setProperty property="mon" name="money"/>
�Էµ� �ݾ� <%=money.getMon()%> �� <br> <%=money.process()%>
</body>
</html>