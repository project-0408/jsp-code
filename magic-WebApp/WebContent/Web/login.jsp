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
			<td>����� ID</td>
			<td>
				<input type = "text" name = "mem_uid">
			</td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td>
				<input type = "password" name = "mem_pw">
			</td>
		</tr>
		<tr>
			<td>
				<input type = "submit" value="�α���">
				<input type = "button" value="ȸ������" onclick = "javascript:window.location='register.jsp'">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>