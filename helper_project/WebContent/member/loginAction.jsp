<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="db.UserDAO" %>
    <%@ page import="java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="user" class="db.userBeans.UserBean" scope="page"></jsp:useBean>
    <jsp:setProperty property="id" name="user"/>
    <jsp:setProperty property="pw" name="user"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = null;
	if(session.getAttribute("id") != null){
		id = (String) session.getAttribute("id");
	}
	if(id != null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href ='../main.jsp'");
		script.println("</script>");
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.login(user.getId(),user.getPw());
	 if(result > 0){
		session.setAttribute("no", String.valueOf(result));
		session.setAttribute("id", user.getId());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href ='../main.jsp'");
		script.println("</script>");
	}
	else if(result == 0 || result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디/비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	}else if(result == -2){ 
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생하였습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	%>
</body>
</html>