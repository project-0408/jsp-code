<%@page import="java.io.PrintWriter"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="db.notifyBoardBeans.NoticeDTO"/>
	<jsp:setProperty property="*" name="dto"/>	
<%
	request.setCharacterEncoding("UTF-8");
	String p_helper_path = request.getContextPath();
	String no = request.getParameter("no");
	NoticeDAO dao = NoticeDAO.getInstance();
	
	if(dao.delete(no)){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('공지사항을 삭제했습니다..')");
		script.println("</script>");
		response.sendRedirect(p_helper_path+"/notice_board/notice_list.jsp");
	}else{
%>
		<script language="JavaScript" >
			alert("삭제에 실패하였습니다.");
			history.go(-1);
		</script>
<%
		
	}
	
%>

