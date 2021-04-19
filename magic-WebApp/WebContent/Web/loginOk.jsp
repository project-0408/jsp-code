<%@page import="magic.MemberBean"%>
<%@page import="magic.MemberDBBean"%>
<%@page import="magic.HanConv"%>
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
	String id = request.getParameter("mem_uid");
	String pw = request.getParameter("mem_pw");
	MemberDBBean manager = MemberDBBean.getInstance();
	int check = manager.userCheck(id, pw);
	MemberBean mb = manager.getMember(id);
	String name = mb.getMem_name();
	
	
	if (check == 1){
		session.setAttribute("uid", id);		
		session.setAttribute("name", name);
		session.setAttribute("Member", "yes");
		response.sendRedirect("main.jsp");
	}
	else if(check==0){
		%>
		<script>
		alert("비밀번호가 틀렸습니다.");
		history.gr(-1);
		</script>
		<% 
	}
	else if(check==-1){
		%>
		<script>
		alert("등록되지 않은 회원입니다.");
		history.gr(-1);
		</script>
		<% 
	}
	%>

</body>
</html>