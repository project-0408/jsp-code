<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="board.js" charset="utf-8"></script>
</head>
<body>
	<form name="bd_frm" action="write_ok.jsp" method="post">
		<table>
			<tr>
				<td>
					<h1>�� �� �� ��</h1>
				</td>
			</tr>
			<tr>
				<td>�ۼ���<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>��ȣ �Է� <input type="text" name="b_pwd"></td>
			</tr>
			<tr>
				<td>�̸��� <input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>������ <input style="width: 350px;" type="text" name="title">
				</td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="65" name="content"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="�ۼ�" onclick="check_ok()">
					<input type="reset" value="�ٽ��ۼ�"><input type="button"value="�۸��" onclick="javascript:window.location='list.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>