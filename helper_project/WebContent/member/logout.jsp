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
session.removeAttribute("id"); //���� ����
session.removeAttribute("no");
String p_helper_path = request.getContextPath();
%>
<script>
		alert("�α� �ƿ� �Ǿ����ϴ�.");
		location.href="<%=p_helper_path%>/main.jsp";
</script>
</body>
</html>