<%@page import="magic.BoardBean"%>
<%@page import="magic.BoardDBBean"%>
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

	<%
	String pageNum = request.getParameter("pageNum");
	int number = 0;
	int b_ref = 1;
	int b_step = 0;
	int b_level = 0;
	String title = "";
	if (request.getParameter("number") != null) {
		number = Integer.parseInt(request.getParameter("number"));
	}
	BoardDBBean db = BoardDBBean.getInstance();
	BoardBean board = db.getBoard(number);

	if (board != null) {
		title = board.getTitle();
		b_ref = board.getB_ref();
		b_step = board.getB_step();
		b_level = board.getB_level();
	}
	%>

	<form name="form" action="write_ok.jsp" method="post" enctype = "multipart/form-data">
		<input type="hidden" name="number" value="<%=number%>"> <input
			type="hidden" name="b_ref" value="<%=b_ref%>"> <input
			type="hidden" name="b_step" value="<%=b_step%>"> <input
			type="hidden" name="b_level" value="<%=b_level%>">
		<table>
			<tr>
				<td>
					<h1>글 올 리 기</h1>
				</td>
			</tr>
			<tr>
				<td>작성자<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>암호 입력 <input type="text" name="b_pwd"></td>
			</tr>
			<tr>
				<td>이메일 <input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>글제목 <%
					if (number == 0) {
				%> 
				<input style="width: 350px;" type="text" name="title"> 
				<%
 					} else {
 				%> 
 				<input style="width: 350px;" type="text" name="title" value="[답변]<%=title%>"> 
 				<%
 					}
				%>
				</td>
			</tr>
			<tr>
				<td>파일 선택하기 : &nbsp;
				<input type = "file" name = "b_fname" size = "50"></td>
			</tr>
			<tr>
				<td><textarea rows="10" cols="65" name="content"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="작성" onclick="check_ok()">
					<input type="reset" value="다시작성">
					<input type="button" value="글목록" onclick="javascript:window.location='list.jsp?pageNum=<%=pageNum%>'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>