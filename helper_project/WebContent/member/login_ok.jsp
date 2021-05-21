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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("test") && pw.equals("1234")){
		session.setAttribute("id", id);
		%>
		<script>
		alert("로그인 되었습니다.");
		location.href="../main.jsp";
		</script>
		<%
		}
	else{
		%>
		<script>
		alert("아이디 혹은 비밀번호가 틀렸습니다.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} 
	%>
	<%
%>
</body>
</html>