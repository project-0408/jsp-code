<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int bid = Integer.parseInt(request.getParameter("b_id"));
	BoardDBBean db=BoardDBBean.getInstance();
	BoardBean board = db.getBoard(bid, true);
	
	int b_id=0, b_hit=0;
	String b_name="", b_email, b_title="", b_content="";
	Timestamp b_date=null;
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm");
	
	if(board != null){
		b_id = board.getB_id();
		b_name = board.getB_name();
		b_email = board.getB_email();
		b_title = board.getB_title();
		b_content = board.getB_content();
		b_date = board.getB_date();
		b_hit = board.getB_hit();
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>�� �� �� �� ��</h1>
		<table cellspacing="0" width="600" border="1">
			<tr align="center">
				<td width="100">�۹�ȣ</td>
				<td width="200"><%= b_id %> </td>
				<td width="100">��ȸ��</td>
				<td width="200"><%= b_hit %> </td>
			</tr>
			<tr align="center">
				<td width="100">�ۼ���</td>
				<td width="200"><%= b_name %> </td>
				<td width="100">�ۼ���</td>
				<td width="200"><%= sdf.format(b_date) %> </td>
			</tr>
			<tr >
				<td width="100" align="center" >������</td>
				<td colspan="3"><%= b_title %> </td>
			</tr>
			<tr>
				<td width="100" align="center" >�۳���</td>
				<td colspan="3"><%= b_content %> </td>
			</tr>
			<tr>
				<td colspan="4" align="right" >
					<input type="button" value="�ۼ���" onclick="location.href='edit.jsp?b_id=<%= b_id %>'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="�ۻ���" onclick="location.href='delete.jsp?b_id=<%= b_id %>'" >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="button" value="�۸��" onclick="location.href='list.jsp'" >
				</td>
			</tr>
		</table>
	</center>
</body>
</html>



















