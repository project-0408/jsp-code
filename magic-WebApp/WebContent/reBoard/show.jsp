<%@page import="java.sql.Timestamp"%>
<%@page import="magic.BoardDBBean"%>
<%@page import="magic.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	BoardDBBean bdb = BoardDBBean.getInstance();
	BoardBean bb = bdb.getBoard(Integer.parseInt(request.getParameter("number")));

	int number = bb.getNumber();
	String name = bb.getName();
	String title = bb.getTitle();
	String content = bb.getContent();
	Timestamp date = bb.getDate();
	int a = bb.getB_hit();
	String pw = bb.getB_pwd();
	
	%>
	<form action="delete.jsp" method="post">
		<table border="1" cellspacing="0">
			<tr>
				<td align="center">�۹�ȣ</td>
				<td colspan = "3"><%=number%></td>
			</tr>
			<tr>
				<td align="center">�ۼ���</td>
				<td><%=name%></td>
			
				<td align="center">�ۼ�����</td>
				<td style="width: 200px"><%=date%></td>
			</tr>
		
			<tr>
				<td align="center" >������</td>
				<td colspan = "3"><%=title%></td>
			</tr>
			<tr>
				<td style="width: 100px;" align="center">�۳���</td>
				<td style="width: 350px;" colspan = "3"><%=content%></td>
			</tr>
			<tr>
				<td align="center" >��ȸ��</td>
				<td colspan = "3"><%=a%></td>
			</tr>
			<tr>
			<td colspan="4" align="right" >
				<input type="button" value="�ۼ���" onclick="location.href='edit.jsp?number=<%= number %>'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="�ۻ���" onclick="location.href='delete.jsp?number=<%=number%>'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="�亯��" onclick="location.href='write.jsp?number=<%=number%>'">
					<input type="button" value="�۸��" onclick="location.href='list.jsp'" >
					</td>
			</tr>
		</table>
	</form>
</body>
</html>