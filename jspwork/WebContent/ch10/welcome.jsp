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
		
	 out.println(get_id + " �� �ݰ����ϴ�."); 	
	 }else {
		 response.sendRedirect("session_out.jsp");
	 }
	 %>

	<a href="session.jsp">�α� �ƿ�</a>

</body>
</html>