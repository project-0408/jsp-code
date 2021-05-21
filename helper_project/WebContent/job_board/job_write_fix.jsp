<%@page import="db.JobPostDAO"%>
<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String job_post_no = request.getParameter("no");
JobPostDAO jpDAO = JobPostDAO.getInstance();
/* System.out.println("no: "+job_post_no); */
JobPostBean jp = jpDAO.getPost(job_post_no);

/* System.out.println(jp.getJob_title());
System.out.println(jp.getJob_time_start());
System.out.println(jp.getJob_time_end());
System.out.println(jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println(jp.getJob_location_first_name());
System.out.println(jp.getJob_location_detail());
System.out.println(jp.getJob_pay());
System.out.println(jp.getJob_detail()); */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<%@ include file="/header.jsp" %>
<link rel="stylesheet" href="<%=p_helper_path %>/css/board_writer_fix.css" type="text/css" />
<title>구인 게시글 수정</title>
</head>
<body>

	<div class="total">
		<form action="job_write_fix_ok.jsp?no=<%=job_post_no %>" method="POST" name="form">
			<div class = "section">
			<h1>구인 게시글 수정</h1>
			<div class="date">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;<input type="text" name="job_title" value = "<%=jp.getJob_title()%>"class="title">
					</h3>
				</ul>
				<ul>
					<h3>공고기간</h3>
				</ul>
				<ul>
					<!-- 데이, 타임 입력 -->
					<jsp:include page="../util/datepicker_fix.jsp?no=<%=job_post_no %>"></jsp:include>
					
				</ul>
			</div>
			<div class="detail">
				<ul>
					<h3>상세공고</h3>
				</ul>
				<ul>
					<h4>
						카테고리 &nbsp;&nbsp;&nbsp; 
						<select name="category" id="category" value="<%=jp.getCategory() %>">
								<option value=4>선택안함</option>
								<option value=5>가사도우미</option>
								<option value=6>청소도우미</option>
								<option value=7>등하원도우미</option>
								<option value=8>요리도우미</option>
								<option value=9>산후도우미</option>
								<option value=10>식당도우미</option>
								<option value=11>육아도우미</option>
								<option value=12>펫시터</option>
								<option value=13>베이비시터</option>
								<option value=14>요양보호사</option>
								<option value=15>대리티켓구매</option>
								<option value=16>직구대행</option>
								<option value=17>기타</option>
							</select>
					</h4>
				</ul>
				<ul>
					<h4>
						인원수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="number" value="<%=jp.getJob_num_of_people() %>"
							min="1" max="5" name="job_num_of_people">
					</h4>
				</ul>
				<ul>
					<h4>
					<!-- 주소 입력 -->
						<script type="text/javascript" src="<%=p_helper_path %>/util/juso3.js" ></script>
						도로명 주소 
						<input  type="text"  style="width:auto;" id="location_addr" name="location_addr" value="<%=jp.getLocation_addr() %>" readonly/>
						 <input type="button" onClick="goPopup();" value="주소 찾기"/>
						 상세 주소
						 <input type="text" name="location_detail" value="<%=jp.getLocation_detail()%>" />
						 <input type="hidden" name="location_first_name" value="<%=jp.getLocation_first_name() %>" />
						<input type="hidden" name="location_second_name" value="<%=jp.getLocation_second_name() %>" />
					</h4>
				</ul>
				<ul>
					<h4>
						금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="text" value ="<%=jp.getJob_pay() %>" name="job_pay"/>&nbsp;원
					</h4>
				</ul>
				<ul>
					<h4>상세</h4>
					<textarea cols="60" rows="10" name ="job_detail"><%=jp.getJob_detail() %></textarea>
				</ul>
			</div>
			<div class="btn">
				<button type="submit">수정하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		<%@ include file="/footer.jsp" %>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














