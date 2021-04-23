<%@page import="java.net.InetAddress"%>
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
	InetAddress address = InetAddress.getLocalHost();
	String ip = address.getHostAddress();
	
	bd.setB_ip(ip);
	BoardDBBean B_manager = BoardDBBean.getInstance();
	
	int re = B_manager.insertBoard(bd);
	
	if(re == 1){
		response.sendRedirect("list.jsp");
		%>
	<script>
		 alert("게시글이 작성 되었습니다.");
	</script>
		<% 
	}
	else{
		response.sendRedirect("write.jsp");
	}
	%>
</body>
</html>