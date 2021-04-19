<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="num" class = "question.Triangle"></jsp:useBean>
	<jsp:setProperty property="*" name="num"/>
    <%=num.process()%>
</body>
</html>