<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_id = Integer.parseInt(request.getParameter("b_id"));

	BoardDBBean db=BoardDBBean.getInstance();
	BoardBean board = db.getBoard(b_id, false);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="board.js" charset="utf-8" ></script>
</head>
<body>
	<center>
		<h1>�� �� �� �� ��</h1>
		<form name="form" action="edit_ok.jsp?b_id=<%= b_id %>" method="post">
			<table>
				<tr>
					<td>�ۼ���</td>
					<td><input type="text" name="b_name" value="<%= board.getB_name() %>" > </td>
					<td>�̸���</td>
					<td><input type="text" name="b_email" value="<%= board.getB_email() %>" > </td>
				</tr>
				<tr>
					<td>������</td>
					<td colspan="3"><input type="text" size="55" name="b_title" value="<%= board.getB_title() %>"> </td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea rows="10" cols="65" name="b_content">
							<%= board.getB_content() %>
						</textarea> 
					</td>
				</tr>
				<tr>
					<td>��&nbsp;&nbsp;ȣ</td>
					<td><input type="password" name="b_pwd" maxlength="12" > </td>
				</tr>
				<tr align="center">
					<td colspan="4">
						<input type="button" value="�ۼ���" onclick="check_ok()">&nbsp;
						<input type="reset" value="�ٽ��ۼ�">
						<input type="button" value="�۸��" onclick="location.href='list.jsp'" >
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>














