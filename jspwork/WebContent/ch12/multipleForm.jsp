<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="num" class = "question.Multiple"></jsp:useBean>
	<jsp:setProperty property="*" name="num"/>
�Էµ� ���� <%=num.getNum()%> �� <%=num.process()%>

</body>
</html>