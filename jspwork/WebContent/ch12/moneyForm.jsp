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
입력된 금액 <%=money.getMon()%> 는 <br> <%=money.process()%>
</body>
</html>