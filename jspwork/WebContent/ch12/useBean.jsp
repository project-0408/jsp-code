<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id = "circlebean" class = "area.Circle"></jsp:useBean>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>원의 면적 출력하시</h4>
	반지름이 10인 원의 면적은 
	<% circlebean.setR(10.0);%>
	<%=	circlebean.process() %>

</body>
</html>