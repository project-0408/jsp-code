<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="num" class = "question.Array2"></jsp:useBean>
	<jsp:setProperty property="*" name="num"/>
	입력된 정수
	<% 
		for(int i = 0 ; i < 5 ; i++ ){
			out.print(num.getNum(i) + " ");
		}
	%> 의
	3의 배수는 <%= num.process() %>
</body>
</html>