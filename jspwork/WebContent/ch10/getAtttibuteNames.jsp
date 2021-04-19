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
		String Is_validate = "현재 페이지는 물론 이전 페이지에서 설정된 세션값들도 나타납니다.";

	session.setAttribute("Validata", Is_validate);

	Enumeration enum_app = session.getAttributeNames();

	int i = 0;
	String ls_name = "";
	String ls_value = "";

	while (enum_app.hasMoreElements()) {
		i++;
		ls_name = enum_app.nextElement().toString();
		ls_value = session.getAttribute(ls_name).toString();

		out.println("<br>얻어온 세션 이름 [" + i + "] : " + ls_name + "<br>");
		out.println("<br>얻어온 세션 이름 [" + i + "] : " + ls_value + "<hr>");
	}
	%>




</body>
</html>