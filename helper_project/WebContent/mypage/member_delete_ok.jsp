<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String p_helper_path = request.getContextPath();
String user_no = (String)session.getAttribute("no");
UserDAO uDAO = UserDAO.getInstance();
if(uDAO.deleteUser(user_no) == true){
	session.removeAttribute("id");
	session.removeAttribute("no");
%>
<script>
	alert("탈퇴되었습니다. ㅠㅠ");
	location.href="<%=p_helper_path%>/main.jsp";
</script>
<%
} else {
%>
<script>
	alert("관리자 계정이거나, 삭제에 실패하였습니다.");
</script>
<%
}
%>