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
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("admin1234")){
			session.setAttribute("userId",id);
			response.sendRedirect("welcome.jsp");
		}
		else {
			response.sendRedirect("session.jsp");
		}
	%>

</body>
</html>