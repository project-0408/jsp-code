<%@page import="magic.HanConv"%>
<%@page import="magic.HanConv"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="mb" class="magic.MemberBean"/>
 <jsp:setProperty property = "*" name = "mb"/>

 <% 
	MemberDBBean manager = MemberDBBean.getInstance();
	
	if(manager.confirmID(mb.getMem_uid())==1){
	%>
	<script>
	alert("�ߺ��Ǵ� ���̵� �����մϴ�.");
	history.back();
	</script>
	<%
	} else {
		int re = manager.insertMember(mb);
	%>
	 <script>
	 alert("ȸ�����Կ� ���� �߽��ϴ�.");
	 document.location.href="login.jsp";
	 </script>
	<%
  }
 %>
</body>
</html>