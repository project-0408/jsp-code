<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type = "text/javascript" src="script.js" charset="utf-8"></script>
</head>
<body>
	<table border="1">
		<form name = "reg_frm">
			<tr>
				<td align="center" colspan = "2"><h1>ȸ�� ���� ��û</h1>
				<p>*ǥ�ô� �ʼ� �׸��Դϴ�.</p>
				</td>
			</tr>
			<tr>
				<td align="center">User ID</td>
				<td>
					<input type ="text" name = "mem_uid">*
				</td>
			</tr>
			<tr>
				<td align="center">��ȣ</td>
				<td>
					<input type ="password" name = "mem_pw">*
				</td>
			</tr>
			<tr>
				<td align="center">��ȣ Ȯ��</td>
				<td>
					<input type ="password" name = "mem_pw2">*
				</td>
			</tr>
			<tr>
				<td align="center">�� ��</td>
				<td>
					<input type ="text" name = "mem_name">*
				</td>
			</tr>
			<tr>
				<td align="center">E-mail</td>
				<td>
					<input type ="text" name = "mem_email">*
				</td>
			</tr>
			<tr>
				<td align="center">�� ��</td>
				<td>
					<input type ="text" name = "mem_adress">
				</td>
			</tr>
			<tr>
				<td align="center" colspan = "2">
					<input type = "button" value = "���" onclick="check_ok()">
					<input type = "reset" value = "�ٽ� �Է�" onclick="check_re()">
					<input type = "button" value = "���Ծ���" >
				</td>
			</tr>
		</form>
	</table>
</body>
</html>