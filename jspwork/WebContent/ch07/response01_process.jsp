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
	request.setCharacterEncoding("euc-kr");
	
	String userid = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	if(userid.equals("관리자") && passwd.equals("1234") ){
		response.sendRedirect("response01_success.jsp");
	}
	else {
		response.sendRedirect("response01_failed.jsp");
	}
	%>
</body>
</html>