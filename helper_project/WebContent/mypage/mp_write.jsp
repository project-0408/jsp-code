<%@page import="db.jobBoardBeans.JobPostSubBean"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="db.ReviewBoardDAO"%>
<%@page import="db.reviewBeans.ReviewPostBean"%>
<%@page import="java.util.ArrayList"%>
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
	  <%
	 	request.setCharacterEncoding("UTF-8");
  		String user_no = (String)session.getAttribute("no");

    	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
    	
		int userNo = Integer.valueOf(user_no);
		
    	ArrayList<ReviewPostBean> mrblist = rbDAO.getMyReviewList(userNo);
		ArrayList<JobPostSubBean> mjblist = rbDAO.getMyJobList(userNo); 
	  	
	  %>
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
                   <!--  <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button> -->
				</div>
					<p>&nbsp;&nbsp;</p>
					<h1>&nbsp;&nbsp;등록한 글 목록</h1>
					<p>&nbsp;&nbsp;</p>
					<p>&nbsp;&nbsp;</p>
				<div class="mainbox">
				<h3>구인 게시판</h3>
				<hr>
					<table>
					<%
		    		if(mjblist != null){
		    			for(int i=0; i<mjblist.size(); i++){
	   				%>
						<tr style="height: 50px;">
							<td><%=mjblist.get(i).getCreated_at() %></td>
							<td style="width: 500px;"><a href="<%=p_helper_path%>/job_board/job_detail.jsp?no=<%=mjblist.get(i).getNo()%>"><%=mjblist.get(i).getJob_titile() %></a></td>
						</tr>
					<%
	    				}
		    		}
		    		%>
					</table>
					<div class = "clear"></div>
					<h3>후기 게시판</h3>
					<hr>
					<table>
					<%
		    		if(mrblist != null){
		    			for(int i=0; i<mrblist.size(); i++){
	   				%>
						<tr style="height: 50px;">
							<td><%=mrblist.get(i).getCreated_at() %></td>
							<td style="width: 500px;"><a href="<%=p_helper_path%>/review_board/review_reading.jsp?rno=<%=mrblist.get(i).getNo()%>"><%=mrblist.get(i).getReview_titile() %></a></td>
						</tr>
					<%
	    				}
		    		}
		    		%>
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
<script type="text/javascript" src="resources/js/notice-write.js"></script>
