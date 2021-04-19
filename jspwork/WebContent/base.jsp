<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	String name = "홍길동";
	%>
	<%
	String addr = "서울시 송파구 석촌동";
	%>
	<br>
		이동 : 
		<%= name %> <%-- (expression)을 이용해서 출력 --%>
	<br>
		주소 : 
		<%
		out.println(addr);
		%>
	<br>
	<jsp:include page = "age.jsp"></jsp:include>
	
</body>
</html>