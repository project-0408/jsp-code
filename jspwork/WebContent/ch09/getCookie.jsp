<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h3>쿠키의 정보를 얻어오는 예제</h3></center>
<hr>
</body>
</html>
<% 
	Cookie [] cookies =  request.getCookies();
	out.println("현재 설정된 쿠키의 갯수  => " + cookies.length);
	out.println("<br><hr>");
	
	for(int i = 0;i<cookies.length;i++){
		out.println(i + "번째의 쿠키의 이름 => " + cookies[i].getName());
		out.println("<br><hr>");
		out.println("쿠키의 설정된값  => " + cookies[i].getValue());
		out.println("<br><hr>");
		}
%>