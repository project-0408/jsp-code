<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="arith" class = "question.Arithmetic"></jsp:useBean>
<jsp:setProperty property="*" name="arith"/>
<%=arith.process()%>

</body>
</html>