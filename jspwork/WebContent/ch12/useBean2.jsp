<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id = "rectangleBean" class = "area.Rectangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>사각형의 면적 출력하기</h4>
	<% 
		rectangleBean.setW(20);
		rectangleBean.setH(30);
		out.println("가로 20, 세로 30인 사각형의 면적은 "+rectangleBean.process());
	%>
</body>
</html>