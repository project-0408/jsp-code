<%@page import="magic.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="bd" class="magic.BoardBean"/>
 <jsp:setProperty property = "*" name = "bd"/>
 
	<%
	BoardDBBean B_manager = BoardDBBean.getInstance();
	
	int re = B_manager.insertBoard(bd);
	
	if(re == 1){
		response.sendRedirect("list.jsp");
		%>
	<script>
		 alert("�Խñ��� �ۼ� �Ǿ����ϴ�.");
	</script>
		<% 
	}
	else{
		response.sendRedirect("write.jsp");
	}
	%>
</body>
</html>