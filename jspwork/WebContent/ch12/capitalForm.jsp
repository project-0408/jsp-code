<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="capital" class = "question.Capital"></jsp:useBean>
	<jsp:setProperty property="str" name="capital"/>
	
	<%out.print("입력된 알파벳이 " + capital.getStr() + "는 <br>" + capital.process(capital.getStr()));%>
</body>
</html>