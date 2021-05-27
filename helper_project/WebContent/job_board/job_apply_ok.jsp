<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.VolunteerDAO"%>
<%
request.setCharacterEncoding("UTF-8");
String p_helper_path = request.getContextPath();

String job_post_no = request.getParameter("no");
String user_no = (String)session.getAttribute("no");

VolunteerDAO vDAO = VolunteerDAO.getInstance();
if(vDAO.addVolunteer(user_no, job_post_no)){
	out.println("<script>alert('지원 완료!');</script>");	
}
%>
<script>
document.location.href="<%=p_helper_path%>/job_board/job_detail.jsp?no=<%=job_post_no%>";
</script>