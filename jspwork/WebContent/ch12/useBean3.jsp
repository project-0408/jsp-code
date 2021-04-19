<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <jsp:useBean id = "GuGuBean" class = "question.GuGuDan"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>구구단 출력하기</h4>

<% for(int i = 0 ; i<9 ; i++){
	out.println(GuGuBean.process(5,i+1));
	%><br>
<%}%>

	


</body>
</html>