<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="xy" class = "question.Rectangle"></jsp:useBean>
<jsp:setProperty property="*" name="xy"/>
<%=xy.process()%>


</body>
</html>