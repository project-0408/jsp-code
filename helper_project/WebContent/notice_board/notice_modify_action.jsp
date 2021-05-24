<%@page import="java.io.PrintWriter"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); 
	String p_helper_path = request.getContextPath();
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dto" class="db.notifyBoardBeans.NoticeDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	String no = request.getParameter("no");
	System.out.println("no@@: "+no);
	NoticeDAO dao=NoticeDAO.getInstance();
	
	
	if(dao.updateEdit(dto, no)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('공지사항을 수정했습니다..')");
		script.println("</script>");
		response.sendRedirect(p_helper_path+"/notice_board/notice_reading.jsp");
	}
%>





