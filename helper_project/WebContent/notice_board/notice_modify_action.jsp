<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="DTO" class="db.notifyBoardBeans.NoticeDTO"/>
<jsp:setProperty property="*" name="DTO"/>

<%
	NoticeDAO dao = NoticeDAO.getInstance();
	int x = dao.updateEdit(DTO);
	
	if(x == 1){
		response.sendRedirect("notice_list.jsp");
	}else{
%>
		<script language="JavaScript" >
			alert("수정에 실패했습니다");
			history.go(-1);
		</script>
<% 
	}
%>

