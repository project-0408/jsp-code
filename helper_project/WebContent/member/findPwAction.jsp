<%@page import="db.userBeans.UserBean"%>
<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
      String id = request.getParameter("id");
      String email = request.getParameter("email");
      
      System.out.println(id);
      System.out.println(email);
 
      UserDAO manager = UserDAO.getInstance();
      UserBean c = manager.findPw(id, email);
%>
<body >
<center>
<form method = "post" action = "login.jsp">
<%
            if(c != null)
            {
%>
                  <%= id %>님의 비밀번호는 <b><%= c.getPw() %></b> 입니다.<p>
                  <input type = "submit" value = "로그인화면으로">
<%
            }
            else {
%>
                  정보가 틀렸습니다.<p>
                  <input type = "button" value = "다시 입력하기" onclick ="location.href='idpwd.jsp'">
<%
            }
%>
</form>
</center>
</body>
</html>