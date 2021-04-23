<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int number = Integer.parseInt(request.getParameter("number"));
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript" src="board.js" charset="utf-8"></script>
</head>
<body>
		<h1>글 삭 제 하 기</h1>
		<form name="form" action="delete_ok.jsp?number=<%=number%>" method="post">
			<table>
				<tr>
					<td colspan="2" align="left">
						<b> 암호를 입력하세요.
						</b>
					</td>
				</tr>
				<tr>
					<td width="80">
						암&nbsp;&nbsp;호
					</td>
					<td>
						<input name="b_pwd" type="password" size="12">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="글삭제" onclick="delete_ok()">&nbsp;
						<input type="reset" value="다시작성">&nbsp;
						<input type="button" value="글목록" onclick="location.href='list.jsp'">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>

