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
		alert("�α��� �Ǿ����ϴ�.");
		location.href="../main.jsp";
		</script>
		<%
		}
	else{
		%>
		<script>
		alert("���̵� Ȥ�� ��й�ȣ�� Ʋ�Ƚ��ϴ�.");
		</script>
		<%
		response.sendRedirect("login.jsp");
	} 
	%>
	<%
%>
</body>
</html>