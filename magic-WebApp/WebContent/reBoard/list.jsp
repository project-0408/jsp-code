<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.BoardDBBean"%>
<%@page import="magic.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    BoardDBBean db = BoardDBBean.getInstance();
    ArrayList<BoardBean> boardList = db.listBoard();
    int i,number;
    String name;
	String email;
	String title;
	String content;
	Timestamp date;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h1>�Խ��ǿ� ��ϵ� �� ��� ����</h1>
<form>
<table>
	<tr>
		<td><a href = "write.jsp">�� �� ��</a></td>
	</tr>
</table>
<table border = "1" cellspacing="0">
	<tr>
		<td>��ȣ</td>
		<td width = "500px" align = "center">������</td>
		<td>�ۼ�����</td>
		<td>�ۼ���</td>
	</tr>
	<%
	for(i=0;i<boardList.size();i++){
		BoardBean board =  boardList.get(i);
		number = board.getNumber();
		name = board.getName();
		title = board.getTitle();
		date = board.getDate();
		
		%>
		<tr bgcolor = "#f7f7f7" onmouseover = "this.style.backgroundColor='#eeeeef'" onmouseout="this.style.backgroundColor='#f7f7f7'">
		<td><%=number%></td>
		<td><a href ="show.jsp?number=<%=number%>"><%=title%></a></td>
		<td><%=date%></td>
		<td><%=name%></td>
		</tr>
		<%
	}
	%>
	
</table>
</form>
</body>
</html>