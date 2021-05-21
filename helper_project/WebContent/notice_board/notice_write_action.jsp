<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	request.setCharacterEncoding("UTF-8");%>

<%		String title = request.getParameter("title");
		int category = Integer.parseInt(request.getParameter("category"));
		String detail = request.getParameter("detail");

		NoticeDTO dto = new NoticeDTO();

		dto.setTitle(title);
		dto.setCategory(category);
		dto.setDetail(detail);

		NoticeDAO dao = new NoticeDAO();

		int affected = dao.insertWrite(dto);
		if(affected == 1) {
%>
					<script>
					alert('공지사항을 등록했습니다.');
					  location.href='notice_list';
					</script>
<% 

		}
		else {
%>
					<script>
					alert('공지사항 등록을 실패하셨습니다.');
					history.back();
					</script>
<%
		}
		
%>