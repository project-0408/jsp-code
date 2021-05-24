<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="db.UserDAO" %>
<%@ page import="db.userBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% request.setCharacterEncoding("UTF-8"); %>

<%
      String name = request.getParameter("name");
      String email = request.getParameter("email");
 
      System.out.println(name);
      System.out.println(email);
      
      UserDAO manager = UserDAO.getInstance();
      UserBean c = manager.findId(name, email);
 
      try
      {
%>
<body>
<center>
<form method = "post" action = "idpwd.jsp">
<%
            if(c != null)
            {
%>
                  <%= name %>님의 아이디는 <b><%= c.getId() %></b> 입니다.<p>
                  <input type = "submit" value = "로그인창으로">
<%
            }
            else
            {
%>
                  입력된 정보가 틀렸습니다.<p>
                  <input type = "button" value = "다시 입력하기" onclick ="location.href='idpwd.jsp'">
<%
            }
%>
</form>
</center>
</body>
<%
            }catch(Exception e) {}
%>
</html>
