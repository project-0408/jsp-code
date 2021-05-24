<%@page import="db.ReviewBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	request.setCharacterEncoding("UTF-8");
	String user_no = (String)session.getAttribute("no");
	String p_helper_path = request.getContextPath();
	
	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
	
	rb.setCreator(Integer.valueOf(user_no));
	
	String review_no = request.getParameter("rno");
	System.out.println("user_no : " + user_no + ", review_no : " + review_no);
	rbDAO.deleteReivew(review_no, rb);
%>
<script>
document.location.href="<%=p_helper_path%>/review_board/review_list.jsp";
</script>