<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<div class="searchArea">
					<form>
						<input type="search" placeholder="search"> <span>검색</span>
					</form>
				</div>
<!-- include header page -->
	<%@ include file="admin_header.jsp" %>
			</div>
			<div class="intro_text">
				<h1>The Helper</h1>
				<h4 class="contents1">당신의 시간을 삽니다</h4>
			</div>
		</div>
	</div>
	<!-- intro end-->
	<ul class="amount">
		<li>
			<div>
				<div class="contents1">오늘 업데이트된 구인 글 수</div>
				<div class="result">128,021</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1">전체 회원 수</div>
				<div class="result">93,234</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1">오늘의 포인트 왕</div>
				<div class="result">hello 님</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1">오늘 방문자 수</div>
				<div class="result">21,084</div>
			</div>
		</li>
	</ul>
	<!-- amount end -->

	<div class="main_text0">
		<h1>ABOUT</h1>
		<div class="contents1">바쁘다 바빠 현대사회, 현대사회에서 혼자 할 수 없는 일 또는 귀찮은
			일들을 주변의 이웃을 구인해서 해결하는 구인 중개 플랫폼</div>

		<ul class="icons">
			<li>
				<div class="icon_img">
					<img src="../images/job11.png">
				</div>
				<div class="contents1_bold">구인 게시판</div>
				<div class="contents2">내가 잘하는 일로 이웃도 돕고 돈도 벌고 이석이조!</div>
				<div class="more"><a href="board_list.jsp">MORE</a></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="../images/writing11.png">
				</div>
				<div class="contents1_bold">후기 게시판</div>
				<div class="contents2">
					당신의 정보를 공유 해보아요!
				</div>
				<div class="more"><a href="review_list.jsp">MORE</a></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="../images/shopping11.png">
				</div>
				<div class="contents1_bold">포인트 마켓</div>
				<div class="contents2">열심히 활동한 주민은 포인트로 다양한 기프티콘을 구매하실 수 있습니다
				</div>
				<div class="more"><a href="shop.jsp">MORE</a></div>
			</li>
		</ul>
	</div>

	<div class="main_text1">
		<h1>SERVICE</h1>
		<div class="contents1">당신의 시간을 삽니다</div>
		<div class="service">
			<div class="food_photo">
				<img src="../images/sec.png">
			</div>
			<div class="contents2">
				<h2>가나다라마바사아자차카타파하</h2>
				가가가가가가가가가가가가가가가가가가가가가가가가가가가 <br>
				나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나나 <br> 다다다다다다다다다다다다다다다다다다다다 <br>
				<br> 라라라라라라라라라라라라라라라라라라라라라라라라라라 <br> 마마마마마마마마마마마마마마마마마마마.
				<br> 바바바바바밥바바바바바바바바바바바바바바바바바바바 <br>
				사사사사사사사사사사사사사사사사사사사사사사사사사사사사사사 <br>
				<br> 아아아아아아아아아아아아아아아아아아아아아아아아아아아아 <br>
				차차차차차차차차차차차차차차차차차차차차차차차 <br> 사사사사사사사사사사사사사사사사사사사사사사사사사사사 <br>
				자자자자자자자자자자자자자자자자자자자자자<br>
			</div>
		</div>
	</div>

	<div class="main_text2">
		<ul>
			<li>
				<div>
					<h1>CONTACT</h1>
				</div>
				<div>우리에게 파트너십을 신청하거나, 고객이 되어주세요</div>
				<div class="more2">더 알아보기</div>
			</li>
			<li></li>
		</ul>
	</div>
	 <%@ include file="admin_footer.jsp" %>
</body>
</html>