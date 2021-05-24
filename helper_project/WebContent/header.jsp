<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<%
String p_helper_path = request.getContextPath();
%>
	<header class="header">
		<div class="header_logo">
			<h1>
				<a href="<%=p_helper_path%>/main.jsp">
					<img src="<%=p_helper_path%>/images/logo11.png"
						alt="home"
						width="200"
						height="100"/>
				</a>
			</h1>
		</div>
		<div class="header_gnb">
			<ul class = "nav">
					<li><a href="<%=p_helper_path%>/main.jsp">HOME</a></li>
					<li><a href="<%=p_helper_path%>/job_board/job_main.jsp">구인게시판</a></li>
					<li><a href="<%=p_helper_path%>/review_board/review_list.jsp">후기게시판</a></li>
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
</html>