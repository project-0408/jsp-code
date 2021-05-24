<%@page import="db.reviewBeans.ReviewPostBean"%>
<%@page import="db.ReviewBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/review_writer.css" type="text/css" />
	<title>Insert title here</title>
	<script type="text/javascript" src="script.js" charset="UTF-8"></script>
  </head>
  <body>
	<div class="total">
		<%
			request.setCharacterEncoding("UTF-8");
			ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
			String review_no = request.getParameter("rno");
			ReviewPostBean rpb = rbDAO.getPost(review_no);
		%>
	<%@ include file="/header.jsp" %>
	  <form action="review_writer_fix_ok.jsp?rno=<%= review_no %>" method="post">
	    <h1>후기작성 수정</h1>
	    <div class="section">
	      <ul>
	        <div class="title">
	          <h3>제목&nbsp;&nbsp;&nbsp;<input type="text" name="review_titile" value="<%= rpb.getReview_titile() %>"></h3>
	        </div>
	      </ul>
	      <ul>
	        <div class="content">
	          <h4>후기 작성</h4>
	          <textarea name="review_detail"
	           style="overflow: auto; height: 400px"
	           rows="auto" cols="70"><%= rpb.getReview_detail() %></textarea>
	        </div>
	      </ul>
	      <div class="botton">
	        <button type="submit" onclick="">글 수정</button>
	        <button type="reset">다시쓰기</button>
	        <span><button type="button" value="뒤로가기" onclick="location.href='review_reading.jsp?rno=<%= review_no %>'">뒤로가기</button></span> 
	      </div>
	    </div>
	  </form>
	  <div class="clear"></div>
	    <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>