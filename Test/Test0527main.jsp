<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Test0527.css">
</head>
<body>
	<form>
		<div class="header">
			<div class="a_box">
				<a href="#">공지사항</a> | 
				<a href="#">게시판</a> | 
				<a href="#">FAQ</a> | 
				<a href="#">QnA</a>
			</div>
		</div>
		<div class="section">
			<div class="leftbox">
				<div class="a_box">
					<a href="#">공지사항</a><br>
					<a href="#">게시판</a><br>
					<a href="#">FAQ</a><br> 
					<a href="#">QnA</a><br>
					<a href="#">QnA</a>
				</div>
			</div>
			<div class="mainbox">
				<div class="content">		
					<%@ include file="/include.jsp"%> 
				</div>
			</div>
		</div>
		<div class="footer"></div>
	</form>
</body>
</html>