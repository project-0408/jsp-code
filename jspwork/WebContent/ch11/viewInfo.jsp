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
		<h3>ȸ�� ���� ���</h3>
		����� �̸��� <%= name %><br>
		����� ���̴� <%= age %><br>