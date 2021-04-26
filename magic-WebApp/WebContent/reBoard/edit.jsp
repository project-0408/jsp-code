<%@page import="magic.BoardBean"%>
<%@page import="magic.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int number = Integer.parseInt(request.getParameter("number"));

	BoardDBBean db=BoardDBBean.getInstance();
	BoardBean board = db.getBoard(number);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="board.js" charset="utf-8" ></script>
</head>
<body>

		<h1>글 수 정 하 기</h1>
		<form name="form" action="edit_ok.jsp?number=<%=number%>" method="post">
			<table>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="name" value="<%=board.getName()%>" > </td>
					<td>이메일</td>
					<td><input type="text" name="email" value="<%=board.getEmail()%>" > </td>
				</tr>
				<tr>
					<td>글제목</td>
					<td colspan="3"><input type="text" size="55" name="title" value="<%= board.getTitle()%>"> </td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea rows="10" cols="65" name="content">
							<%=board.getContent() %>
						</textarea> 
					</td>
				</tr>
				<tr>
					<td>암&nbsp;&nbsp;호</td>
					<td><input type="password" name="b_pwd" maxlength="12" > </td>
				</tr>
				<tr align="center">
					<td colspan="4">
						<input type="submit" value="글수정" onclick="check_ok()">&nbsp;
						<input type="reset" value="다시작성">
						<input type="button" value="글목록" onclick="location.href='list.jsp'" >
					</td>
				</tr>
			</table>
		</form>
	
</body>
</html>














