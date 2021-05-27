<%@page import="db.ReviewPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
        String user_no = (String)session.getAttribute("no");
        if(user_no == null){
        %>
        <script>
            alert("로그인 먼저 하세요.");
            location.href="/helper_project/member/login.jsp";
        </script>
        <%
        }
        %>
<%
	request.setCharacterEncoding("UTF-8");
	String post_no = request.getParameter("no");
%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/review_writer.css" type="text/css">
	<title>Insert title here</title>
	<script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
	<div class="total">
	<%@ include file="/header.jsp" %>
	  <form action="review_writer_ok.jsp?no=<%=post_no %>" method="post">
	    <h1>후기작성</h1>
	    <div class="section">
	      <ul>
	        <div class="title">
	          <h3>제목&nbsp;&nbsp;&nbsp;<input type="text" name="review_titile"></h3>
	        </div>
	      </ul>
	      <div class="content">
	        <h4>후기작성</h4>
	        <textarea 
	        	style="overflow: auto; height: 400px" 
	        	rows="auto" cols="70" name="review_detail"></textarea>
	      </div>
	      <div class="button">
	        <button type="submit" onclick="">글 올리기</button>
	        <button type="reset">다시쓰기</button>
	        <span><button type="button" value="뒤로가기" onclick="history.back()">뒤로가기</button></span>
	      </div>
	    </div>
	  </form>
	  <div class="clear"></div>
	<%@ include file="/footer.jsp" %>
	</div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>