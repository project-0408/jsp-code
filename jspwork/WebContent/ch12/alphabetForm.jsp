<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="alphabet" class = "question.Alphabet"></jsp:useBean>
	<jsp:setProperty property="str" name="alphabet"/>
	
	<%out.print("�Էµ� ���ĺ��� " + alphabet.getStr() + " �� " + alphabet.process(alphabet.getStr()));  %>
</body>
</html>