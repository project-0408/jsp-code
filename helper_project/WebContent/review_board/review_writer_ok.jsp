<%@page import="db.ReviewPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String user_no = (String) session.getAttribute("no");
String post_no = request.getParameter("no");

String p_helper_path = request.getContextPath();

%>
<jsp:useBean id="rb" class="db.reviewBeans.ReviewPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="rb"/>
<%
	rb.setCreator(Integer.valueOf(user_no));
	rb.setJob_post(Integer.valueOf(post_no));
	
	ReviewPostDAO rpDAO = ReviewPostDAO.getInstance();
	if(rpDAO.insertReview(rb) == 1){
		response.sendRedirect(p_helper_path+"/review_board/review_list.jsp");
	}
%>