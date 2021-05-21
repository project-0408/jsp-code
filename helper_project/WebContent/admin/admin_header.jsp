<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String admin_id = (String)session.getAttribute("adminOk");
	
	if(admin_id == null) {
%>
	<script>
		alert("관리자 로그아웃 되었습니다.");
		location.href = "main.jsp";
	</script>
<%
		return;
	}
%>
<html>
<link rel="stylesheet" type="text/css" href="../css/header.css">
	<header class="header">
		<div class="header_logo">
			<h1>
				<a href="main.jsp">
					<img src="../images/logo11.png"
						alt="home"
						width="200"
						height="100"/>
				</a>
			</h1>
		</div>
		<div class="header_gnb">
			<ul class = "nav">
					<li><a href="admin_index.jsp">HOME</a></li>
					<li><a href="/helper_project/notice_board/notice_list.jsp">공지게시판</a></li>
					<li><a href="productmanager.jsp">상품관리</a></li>
					<li><a href ="">회원관리</a></li>
				    <li><a href="admin_login_out.jsp">LOGOUT</a></li>
				</ul>
		</div>
	</header>
</html>