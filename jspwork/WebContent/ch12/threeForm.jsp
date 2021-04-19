<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="three" class ="question.Three"></jsp:useBean>
<jsp:setProperty property="th" name="three"/>
<h4>당신이 입력한 정보입니다.</h4>
<%=three.getTh()%>는 <%=three.process()%>

</body>
</html>