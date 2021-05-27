<%@page import="db.VolunteerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String post_no = request.getParameter("post_no");
String user_no = request.getParameter("user_no");
String state = request.getParameter("state");

VolunteerDAO vDAO = VolunteerDAO.getInstance();
String isSuccess = vDAO.setState(user_no, post_no, state);
if(isSuccess.equals("-1")){
%>
<script>
	alert("처리에 실패하였습니다.\n잠시 후 다시 시도해주세요.");
</script>
<%
} else {
%>
<script>
	opener.call_back(<%=isSuccess %>, <%=user_no%>);
	window.close();
</script>
<%
}
%>