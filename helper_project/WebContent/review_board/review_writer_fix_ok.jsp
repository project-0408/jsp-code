<%@page import="db.ReviewBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String p_helper_path = request.getContextPath();
%>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%

	String user_no = (String)session.getAttribute("no");
	String review_no = request.getParameter("rno");

	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
	rb.setCreator(Integer.valueOf(user_no));
	
	System.out.println(user_no + review_no);
	rbDAO.updateReview(review_no, rb);
%>
<script>
document.location.href="<%=p_helper_path%>/review_board/review_reading.jsp?rno=<%=review_no%>";
</script>