<%@page import="java.util.Enumeration"%>
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
		String Is_validate = "���� �������� ���� ���� ���������� ������ ���ǰ��鵵 ��Ÿ���ϴ�.";

	session.setAttribute("Validata", Is_validate);

	Enumeration enum_app = session.getAttributeNames();

	int i = 0;
	String ls_name = "";
	String ls_value = "";

	while (enum_app.hasMoreElements()) {
		i++;
		ls_name = enum_app.nextElement().toString();
		ls_value = session.getAttribute(ls_name).toString();

		out.println("<br>���� ���� �̸� [" + i + "] : " + ls_name + "<br>");
		out.println("<br>���� ���� �̸� [" + i + "] : " + ls_value + "<hr>");
	}
	%>




</body>
</html>