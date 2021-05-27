<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <link rel="stylesheet" href="../css/mypage_like.css"  type="text/css" />
<title>Document</title>
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
                    <button type="button" onclick="location.href='mp_write.jsp">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                   <!--  <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button> -->
				</div>
				<div class="mainbox">
					<h1>좋아요 한 구직목록</h1>
					<br>
					<table>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;"><a href ="#">글 제목1</a></td>
							<th colspan="2">
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;"><a href ="#">글 제목2</a></td>
						</tr>
						<tr style="height: 50px;">
							<td>날짜</td>
							<td style="width: 500px;"><a href ="#">글 제목3</a></td>
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