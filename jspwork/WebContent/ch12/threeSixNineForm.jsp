<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="num" class = "question.ThreeSixNine"></jsp:useBean>
	<jsp:setProperty property="num" name="num"/>
       박수 <%=num.process()%>

</body>
</html>