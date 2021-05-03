<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.BoardDBBean"%>
<%@page import="magic.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    String pageNum = request.getParameter("pageNum");
    if(pageNum == null){
    	pageNum = "1";
    }
    BoardDBBean db = BoardDBBean.getInstance();
    ArrayList<BoardBean> boardList = db.listBoard(pageNum);
    int b_hit,b_level;
    int i,number;
    String name;
	String email;
	String title;
	String content;
	Timestamp date;
	String b_fname;
    int b_fsize;
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
		<td><a href = "write.jsp?&pageNum=<%=pageNum%>">�� �� ��</a></td>
	</tr>
</table>
<table border = "1" cellspacing="0">
	<tr>
		<td>��ȣ</td>
		<td>÷������</td>
		<td width = "500px" align = "center">������</td>
		<td>�ۼ�����</td>
		<td>�ۼ���</td>
		<td>��ȸ��</td>
	</tr>
	<%
	for(i=0;i<boardList.size();i++){
		BoardBean board =  boardList.get(i);
		number = board.getNumber();
		name = board.getName();
		title = board.getTitle();
		date = board.getDate();
		int a = board.getB_hit();
		b_level = board.getB_level();
		b_fname = board.getB_fname();
		b_fsize = board.getB_fsize();
		
		
		%>
		<tr bgcolor = "#f7f7f7" onmouseover = "this.style.backgroundColor='#eeeeef'" onmouseout="this.style.backgroundColor='#f7f7f7'">
		<td><%=number%></td>
		<td>
		<%
		if(b_fsize>0){
		%>
		<img src = "../img/zip.gif">
		<%} %>
		</td>
		<td>
		<%
			if(b_level > 0){
				for(int j = 0 ;j<b_level;j++){
					%>
						&nbsp;
					<%
				}
				%>
				<img src = "../img/AnswerLine.gif">
				<%
			}
		%>
		<a href ="show.jsp?number=<%=number%>&pageNum<%=pageNum%>"><%=title%></a>
		</td>
		<td><%=date%></td>
		<td><%=name%></td>
		<td><%=a%></td>
		</tr>
		<%
	}
	%>
	
</table>
<%=BoardBean.pageNumber(4)%>
</form>
</body>
</html>