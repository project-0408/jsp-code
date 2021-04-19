<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="number" class = "question.EvenNumber"></jsp:useBean>
	<jsp:setProperty property="*" name="number"/>
입력된 정수 <%=number.getNum()%>의 짝수들의 합계는 <%=number.process()%>
</body>
</html>