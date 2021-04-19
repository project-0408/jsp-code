<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String get_id = (String)session.getAttribute("userId");
	if(get_id.equals("admin")){
		
	 out.println(get_id + " 님 반갑습니다."); 	
	 }else {
		 response.sendRedirect("session_out.jsp");
	 }
	 %>

	<a href="session.jsp">로그 아웃</a>

</body>
</html>