<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.BoardDBBean"%>
<%@page import="magic.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    BoardDBBean db = BoardDBBean.getInstance();
    ArrayList<BoardBean> boardList = db.listBoard();
    int b_hit,b_level;
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
		<h1>게시판에 등록된 글 목록 보기</h1>
<form>
<table>
	<tr>
		<td><a href = "write.jsp">글 쓰 기</a></td>
	</tr>
</table>
<table border = "1" cellspacing="0">
	<tr>
		<td>번호</td>
		<td width = "500px" align = "center">글제목</td>
		<td>작성일자</td>
		<td>작성자</td>
		<td>조회수</td>
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
		
		%>
		<tr bgcolor = "#f7f7f7" onmouseover = "this.style.backgroundColor='#eeeeef'" onmouseout="this.style.backgroundColor='#f7f7f7'">
		<td><%=number%></td>
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
		<a href ="show.jsp?number=<%=number%>"><%=title%></a>
		</td>
		<td><%=date%></td>
		<td><%=name%></td>
		<td><%=a%></td>
		</tr>
		<%
	}
	%>
	
</table>
</form>
</body>
</html>