<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="random" class = "question.TwoArray"></jsp:useBean>
	<jsp:setProperty property="num" name="random"/>
	입력된 수 <%=random.getNum()%> 은 <br> <%=random.process()%>
</body>
</html>