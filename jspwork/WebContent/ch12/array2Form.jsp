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
	�Էµ� ����
	<% 
		for(int i = 0 ; i < 5 ; i++ ){
			out.print(num.getNum(i) + " ");
		}
	%> ��
	3�� ����� <%= num.process() %>
</body>
</html>