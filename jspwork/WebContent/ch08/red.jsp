<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor = "red">
	<center><h3>[jsp:forward 액션 태그에 대한 예제]</h3></center>
	<hr>
	이파일은 red.jsp 입니다.<br>
	웹 브라우저에 배경색이 빨간색으로 나타날가요?<br>
	노란색으로 나타날까요?<br>
	forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.<br>
	<jsp:forward page ="yellow.jsp"></jsp:forward>
</body>
</html>