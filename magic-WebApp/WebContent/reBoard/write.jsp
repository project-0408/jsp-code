<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type = "text/javascript" src="board.js" charset="utf-8"></script>
</head>
<body>
		<form name ="bd_frm" action="write_ok.jsp" method="post">
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
					<td>
				이메일
				<input type="text" name="email">
					</td>
				</tr>
				<tr>
					<td>
				글제목
				<input style="width: 350px;" type="text" name="title">
					</td>
				</tr>
				<tr>
					<td>
				<textarea rows="10" cols="65" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td>
				<input type="submit" value="작성"  onclick = "check_ok()">
				<input type="reset" value="다시작성">
				<input type="button" value ="글목록" onclick = "javascript:window.location='list.jsp'">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>