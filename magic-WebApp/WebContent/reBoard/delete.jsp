<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String pageNum = request.getParameter("pageNum");
	int number = Integer.parseInt(request.getParameter("number"));
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="board.js" charset="utf-8"></script>
</head>
<body>
		<h1>�� �� �� �� ��</h1>
		<form name="form" action="delete_ok.jsp?number=<%=number%>&pageNum<%=pageNum%>" method="post">
			<table>
				<tr>
					<td colspan="2" align="left">
						<b> ��ȣ�� �Է��ϼ���.
						</b>
					</td>
				</tr>
				<tr>
					<td width="80">
						��&nbsp;&nbsp;ȣ
					</td>
					<td>
						<input name="b_pwd" type="password" size="12">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="�ۻ���" onclick="delete_ok()">&nbsp;
						<input type="reset" value="�ٽ��ۼ�">&nbsp;
						<input type="button" value="�۸��" onclick="location.href='list.jsp?pageNum=<%=pageNum%>'">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>

