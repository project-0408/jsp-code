<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStream"%>
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
InputStream is = request.getInputStream();
BufferedReader br = new BufferedReader(new InputStreamReader(is));

String str = null;
while((str = br.readLine()) != null){
%>
	<%= str%>
<%	
}
%>

</body>
</html>