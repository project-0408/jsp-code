<%@page import="java.net.URLDecoder"%>
<%@page import="db.jobBoardBeans.JobPostSubBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR" />
		<%@ include file="/header.jsp" %>
		<link rel="stylesheet" href="<%=p_helper_path %>/css/board_list.css" type="text/css" />
		<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="script.js" charset="utf-8"></script>
		<title>Insert title here</title>
	</head>
	<body>
    <!-- <div class="total"> -->
		<div class="main_content">
			<div class="job_board_session">

				<!-- ★leni★ 지시어로 import, 소스를 포함 시킨 후 컴파일 진행 -->
				<%-- ★leni★ <%@ include file="list.jsp" %> --%>
				<!-- 액션으로 import, 실행시점에서 해당 파일을 수행하여 결과를 포함시킨다. -->
				
				<div class="first">
					<h1>구인 게시판</h1>
					<button type="button" onclick="location.href='job_write.jsp'">글쓰기</button>
					<jsp:include page="job_search_bar.jsp"/>
				</div>
				<div class="second">
					<jsp:include page="job_list.jsp"/>
				</div>
				
		<%--         ★leni★ 두 개 차이점이 존재 할 듯 확인 해 봐야 한다.
				액션 일부 사용법 예시
				<jsp:include page="/WEB-INF/views/include/footer.jsp">
					<jsp:param name="email" value="sesok808@naver.com" />
					<jsp:param name="tel" value="010-1234-5678" />
				</jsp:include> --%>
			</div>
			<!-- <div class ="space"></div> -->
		</div>
	</body>
	<%@ include file="/footer.jsp" %> 
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>
