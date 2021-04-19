<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page errorPage = "error02.jsp" %>
<%!
	String name;
	int age;
	%>
	
	<%
		name = request.getParameter("name");
		age = Integer.parseInt(request.getParameter("age")); %>
		<h3>회원 정보 출력</h3>
		당신의 이름은 <%= name %><br>
		당신의 나이는 <%= age %><br>