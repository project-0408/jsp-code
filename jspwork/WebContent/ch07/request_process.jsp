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
	
	if(id.equals("admin") && pw.equals("admin1234") ){
		
		out.println("전송된 요청 파라미터 : id " + request.getParameter("id") + "& passwd -" + request.getParameter("pw"));
	
	}
	else {
		response.sendRedirect("request.jsp");
	}
	%>
</body>
</html>