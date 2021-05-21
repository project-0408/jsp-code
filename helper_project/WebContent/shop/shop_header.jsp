<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%
String p_helper_path = request.getContextPath();
%>
<!-- 이미지크기 374*374 -->
<link rel="stylesheet" type="text/css" href="./css/shop_header.css">

<title>Insert title here</title>

</head>
<body>
		<header class="header">
			<div class="header_logo">
				<h1>
					<a href="<%=p_helper_path%>/main.jsp"> <img src="<%=p_helper_path%>/images/logo11.png" alt="home"
						width="200" height="100" /></a>
				</h1>
			</div>
			<div class="header_gnb">
				<ul>
					<li><a href="<%=p_helper_path%>/main.jsp">HOME</a></li>
					<li><a href="<%=p_helper_path%>/job_board/job_main.jsp">구인게시판</a></li>
					<li><a href="shop.jsp">포인트상점</a></li>
						<li><%
        				if(session.getAttribute("id")==null){
        				%>
               			 <a href = "<%=p_helper_path%>/member/login_check.jsp">마이페이지</a>
        				<%
						}else{
        				%>
        				 <a href = "<%=p_helper_path%>/mypage/mypage_import.jsp">마이페이지</a>
        				<%
						}        		
        				%>
        				</li>
					<%
					if(session.getAttribute("id")!=null){
						String id = (String)session.getAttribute("id");
						%>
						<li><a href="<%=p_helper_path%>/member/logout.jsp">LOGOUT</a></li>
						<%
						}else{
						%>
						<li><a href="<%=p_helper_path%>/member/login.jsp">LOGIN</a></li>
						<%
						}
						%>
				</ul>
			</div>
			</header>