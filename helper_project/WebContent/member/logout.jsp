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
session.removeAttribute("id"); //세션 삭제
session.removeAttribute("no");
String p_helper_path = request.getContextPath();
%>
<script>
		alert("로그 아웃 되었습니다.");
		location.href="<%=p_helper_path%>/main.jsp";
</script>
</body>
</html>