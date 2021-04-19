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
			Cookie info = new Cookie("userID",id);
			info.setMaxAge(60*60);
			response.addCookie(info);
			response.sendRedirect("welcome.jsp");
			info.setPath("/");
		}
		else {
			response.sendRedirect("cookie.jsp");
		}
	%>
</body>
</html>