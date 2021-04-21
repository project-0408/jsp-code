<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BoardDBBean db=BoardDBBean.getInstance();
	ArrayList<BoardBean> boardList = db.listBoard();
	int i, b_id, b_hit;
	String b_name, b_email, b_title;
	Timestamp b_date;
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>�Խ��ǿ� ��ϵ� �� ��� ����</h1>
		<table width="600" >
			<tr>
				<td align="right" >
					<a href="write.jsp">�� �� ��</a>
				</td>
			</tr>
		</table>
		<table width="800" border="1" cellspacing="0" >
			<tr>
				<td width="40" align="center" >��ȣ</td>
				<td width="450" align="center">������</td>
				<td width="120" align="center">�ۼ���</td>
				<td width="130" align="center">�ۼ���</td>
				<td width="60" align="center">��ȸ��</td>
			</tr>
			<%
				for(i=0; i<boardList.size(); i++){
					BoardBean board = boardList.get(i);
					b_id = board.getB_id();
					b_title = board.getB_title();
					b_name = board.getB_name();
					b_email = board.getB_email();
					b_date = board.getB_date();
					b_hit = board.getB_hit();
			%>
					<tr bgcolor="#f7f7f7" 
						onmouseover="this.style.backgroundColor='#eeeeef'" 
						onmouseout="this.style.backgroundColor='#f7f7f7'">
						<td align="center">
							<%= b_id %>
						</td>
						<td>
							<a href="show.jsp?b_id=<%= b_id %>"><%= b_title %></a>
						</td>
						<td align="center">
							<a href="mailto:<%= b_email %>"><%= b_name %></a>
						</td>
						<td align="center">
							<%= sdf.format(b_date) %>
						</td>
						<td align="center">
							<%= b_hit %>
						</td>
					</tr>
			<%
				}
			%>
		</table>
	</center>
</body>
</html>


















