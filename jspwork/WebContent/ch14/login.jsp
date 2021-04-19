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
		<form>
		<tr>
			<td>사용자 ID</td>
			<td>
				<input type = "text">
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type = "text">
			</td>
		</tr>
		<tr>
			<td>
				<input type = "button" value="로그인">
				<input type = "button" value="회원가입" onclick = "javascript:window.location='register.jsp'">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>