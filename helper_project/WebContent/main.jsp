<%@page import="db.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<%
String p_helper_path = request.getContextPath();
%>
</head>
<body>
	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<ul class = "nav">
					<li><a href="main.jsp">HOME</a></li>
					<li><a href="job_board/job_main.jsp">구인게시판</a></li>
					<li><a href="review_board/review_list.jsp">후기게시판</a></li>
						<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "<%=p_helper_path%>/member/login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "<%=p_helper_path%>/mypage/mypage_import.jsp">마이페이지</a>
        				<%
						}      
        				%>
        				</li>
					<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						String no = (String)session.getAttribute("no");
						%>
						<li><a href="<%=p_helper_path%>/member/logout.jsp">LOGOUT</a></li>
						<%
						}else{
						%>
						<li><a href="<%=p_helper_path%>/member/login.jsp">LOGIN</a></li>
						<%
						}
						%>
				</ul>
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
				<div class="result">
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
    conn = DBConnection.getConnection();
    stmt = conn.createStatement();
    String sql = "SELECT COUNT(NO) FROM JOB_BOARD WHERE (TO_CHAR(CREATED_AT, 'YYYY/MM/DD')) = (TO_CHAR(SYSTIMESTAMP, 'YYYY/MM/DD'))";
    rs = stmt.executeQuery(sql);
    while(rs.next()){
        %>
            	<%=rs.getInt(1)%>
        <%
    }

%>
				</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1">전체 회원 수</div>
				<div class="result">
<%
	sql = "SELECT COUNT(NO) FROM USERS";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		%>
				<%=rs.getInt(1) %>
		<%
	}
%>
				</div>
			</div>
		</li>
		<li>
			<div>
				<div class="contents1">오늘의 포인트 왕</div>
				<div class="result">
<%
	sql = "SELECT NICK FROM USERS WHERE POINT = (SELECT MAX(POINT) FROM USERS)";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		%>
				<%=rs.getString(1) %>
		<%
	}
%>				 님</div>
			</div>
		</li>
<%-- 		<li>
			<div>
				<div class="contents1">오늘 방문자 수</div>
				<div class="result">
<%
	stmt = conn.createStatement();
	sql = "UPDATE HITS SET BOARD_HITS = BOARD_HITS + 1 WHERE NO = 1";
	stmt.executeUpdate(sql);
	stmt = conn.createStatement();
	sql = "SELECT BOARD_HITS FROM HITS";
	rs = stmt.executeQuery(sql);
	while(rs.next()){
		%>
				<%=rs.getInt(1) %>
		<%
	}
%>
				</div>
			</div>
		</li> --%>
	</ul>
	<!-- amount end -->

	<div class="main_text0">
		<h1>ABOUT</h1>
		<div class="contents1">바쁘다 바빠 현대사회, 현대사회에서 혼자 할 수 없는 일 또는 귀찮은
			일들을 주변의 이웃을 구인해서 해결하는 구인 중개 플랫폼</div>

		<ul class="icons">
			<li>
				<div class="icon_img">
					<img src="./images/job11.png">
				</div>
				<div class="contents1_bold">구인 게시판</div>
				<div class="contents2">내가 잘하는 일로 이웃도 돕고 돈도 벌고 이석이조!</div>
				<div class="more"><a href="job_board/job_main.jsp">MORE</a></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="./images/writing11.png">
				</div>
				<div class="contents1_bold">후기 게시판</div>
				<div class="contents2">
					당신의 정보를 공유 해보아요!
				</div>
				<div class="more"><a href="review_board/review_list.jsp">MORE</a></div>
			</li>

			<li>
				<div class="icon_img">
					<img src="./images/notice.png">
				</div>
				<div class="contents1_bold">공지사항</div>
				<div class="contents2">
				다양한 이벤트 소식과 중요한 공지를 확인해보세요!
				</div>
				<div class="more"><a href="notice_board/notice_list.jsp?">MORE</a></div>
			</li>
		</ul>
	</div>

	<div class="main_text1">
		<h1>SERVICE</h1>
		<div class="contents1">당신의 시간을 삽니다</div>
		<div class="service">
			<div class="food_photo">
				<img src="./images/sec.png">
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
	 <%@ include file="/footer.jsp" %>
</body>
</html>