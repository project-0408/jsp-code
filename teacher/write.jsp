<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="board.js" charset="utf-8" ></script>
</head>
<body>
	<center>
		<h1>�� �� �� ��</h1>
		<form name="form" action="write_ok.jsp" method="post">
			<table>
				<tr>
					<td>�ۼ���</td>
					<td><input type="text" name="b_name"> </td>
					<td>�̸���</td>
					<td><input type="text" name="b_email"> </td>
				</tr>
				<tr>
					<td>������</td>
					<td colspan="3"><input type="text" size="55" name="b_title"> </td>
				</tr>
				<tr>
					<td colspan="4"><textarea rows="10" cols="65" name="b_content"></textarea> </td>
				</tr>
				<tr>
					<td>��&nbsp;&nbsp;ȣ</td>
					<td><input type="password" name="b_pwd" maxlength="12" > </td>
				</tr>
				<tr align="center">
					<td colspan="4">
						<input type="button" value="�۾���" onclick="check_ok()">&nbsp;
						<input type="reset" value="�ٽ��ۼ�">
						<input type="button" value="�۸��" onclick="location.href='list.jsp'" >
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>














