<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <script type="text/javascript" src="checking.js" charset="utf-8"></script>
<link rel="stylesheet" href="../css/mypage_write.css" />
<title>document</title>
</head>
<body>
<div class="total">
    <%@ include file="/header.jsp" %>
	<section>
		<form>
			<div class="top"></div>
			<div class="mid"></div>
			<div class="box">
				<div class="leftbox">
					<h3>My page</h3>
                    <button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href='mp_write.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				</div>
					<p>&nbsp;&nbsp;</p>
					<h1>&nbsp;&nbsp;등록한 글 목록</h1>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
				<div class="mainbox">
				<h3>구인 게시판</h3>
				<hr>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="button" value="수정" onclick="location.href='../job_board/board_writer_fix.jsp'"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="button" value="수정" onclick="location.href='../job_board/board_writer_fix.jsp'"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="button" value="수정" onclick="location.href='../job_board/board_writer_fix.jsp'"></th>
						</tr>
					</table>
					<div class = "clear"></div>
					<h3>후기 게시판</h3>
					<hr>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목1</td>
							<th colspan="2"><input type="button" value="수정" onclick="location.href='../review/review_writer_fix.jsp'"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목2</td>
							<th><input type="button"  value="수정" onclick="location.href='../review/review_writer_fix.jsp'"></th>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;">글 제목3</td>
							<th><input type="button" value="수정" onclick="location.href='../review/review_writer_fix.jsp'"></th>
						
						</tr>
					</table>
				</div>
			</div>
		</form>
	</section>
	<div class="clear"></div>
        <%@ include file="/footer.jsp" %>
</div>
</body>
</html>