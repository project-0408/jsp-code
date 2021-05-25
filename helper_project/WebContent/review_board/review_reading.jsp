<%@page import="db.reviewBeans.ReviewBoard"%>
<%@page import="db.ReviewBoardDAO"%>
<%@page import="db.reviewBeans.ReviewPostBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String user_no = (String)session.getAttribute("no");
    	if(user_no == null){
    		%>
    		<script>
				alert("로그인 먼저 하세요.");
				location.href="/helper_project/member/login.jsp";
			</script>
    		<%
    		}
    		%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/review_reading.css" type="text/css"/>
	<title>Insert title here</title>
	<script type="text/javascript" src="scipts.js" charset="UTF-8"></script>
  </head>
  <body>
	<div class="total">
	  <%
	  	request.setCharacterEncoding("UTF-8");
	  	ReviewPostBean rpb = new ReviewPostBean();
	  	String review_no = request.getParameter("rno");
	  	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
	  	rpb = rbDAO.getPost(review_no);
	  	ReviewBoard rb = new ReviewBoard();
	  	rb.getNo();
	  	
	  %>
	  <%@ include file="/header.jsp" %>
	  <form action="" method="post">
	    <h1>후 기</h1>
	    <div class="section">
	      <ul>
	        <div class="title">
	          <h3><%=rpb.getReview_titile() %> &nbsp;&nbsp;&nbsp;</h3>
	          <div class="time">조회수 : <%=rpb.getReview_hits() %></div>
	        </div>
	      </ul>
	      <ul>
	      	<div class="list">
	      		<h3>지원 했던 공고&nbsp;&nbsp;</h3>
	      		<a href="job_detail">지원했던 공고제목</a>
	      		<div class="time">21/04/27</div>
	      	</div>
	      </ul>
	      <ul>
	      	<div class="content">
	      		<h3>후기</h3>
	      		<br>
				<div style="width: auto; height: 400px"><%=rpb.getReview_detail() %></div>	      		
	      	</div>
	      </ul>
	        <div class="button">
	        <button type="button" value="뒤로가기" onclick="location.href='review_list.jsp'">뒤로가기</button>
	        </div>
	        
	           <%
	           int user_no_x = Integer.valueOf((String)session.getAttribute("no")); 
	      if(user_no_x == rpb.getCreator()){
	      %>
	        <div class="button">
	        <button type="button" value="수정하기" onclick="location.href='review_writer_fix.jsp?rno=<%= review_no %>'">수정하기</button>
	        </div>
	        <div class="button">
	        <button type="button" value="삭제하기" onclick="location.href='review_delete.jsp?rno=<%= review_no %>'">삭제하기</button>
	        </div>
<%
	      }
%>	    	  
	    </div>
	  </form>
	    <div class="space"></div>
	    <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>




















