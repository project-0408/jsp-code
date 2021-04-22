<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<form action = "loginOk.jsp" method="post">
		<tr>
			<td>사용자 ID</td>
			<td>
				<input type = "text" name = "mem_uid">
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type = "password" name = "mem_pw">
			</td>
		</tr>
		<tr>
			<td>
				<input type = "submit" value="로그인">
				<input type = "button" value="회원가입" onclick = "javascript:window.location='register.jsp'">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>