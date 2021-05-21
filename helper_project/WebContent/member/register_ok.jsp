<%@page import="java.sql.Timestamp"%>
<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id = "user" class = "db.userBeans.UserBean">
<jsp:setProperty name = "user" property = "*" />
</jsp:useBean>

<%
      user.setCreated_at(new Timestamp(System.currentTimeMillis()));
      UserDAO manager = UserDAO.getInstance();
      if(manager.register(user)){
%>
	<script>
		alert("회원 가입을 축하드립니다! 🎉🎉🎉\n로그인해주세요!");
	</script>
<%
      }
      else {
%>
	<script>
		alert("회원 가입에 실패했습니다. ㅠㅠ\n잠시 후 다시 시도해주세요.");
	</script>
<%    	  
      }
%>
<script>
location.href="login.jsp";
</script>