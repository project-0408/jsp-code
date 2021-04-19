<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="number" class = "question.DivAndRemains"></jsp:useBean>
<jsp:setProperty property="num" name="number"/>
<%=number.getNum()%>은 <%=number.process()%>


</body>
</html>