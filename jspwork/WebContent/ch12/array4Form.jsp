<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="random" class = "question.Array4"></jsp:useBean>
<jsp:setProperty property="num" name="random"/>
�Էµ� �� <%=random.getNum()%> �� <br> <%=random.process()%>

</body>
</html>