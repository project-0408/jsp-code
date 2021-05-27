<%@page import="db.ReviewBoardDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.reviewBeans.ReviewPostBean"%>
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
    
<!DOCTYPE html>
<html>
  <head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/review_list.css" type="text/css" />
	<title>Insert title here</title>
	<script type="text/javascript" src="script.jsp" charset="utf-8"></script>
  </head>
<body>
	<div class="total">
	  <%	  	
    	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
    	ArrayList<ReviewPostBean> rplist = rbDAO.getList();
	  %>
	  <%@ include file="/header.jsp" %>
	  <form>
	    <h1>후기 게시판</h1>
	    <div class="section">

	    </div>
	    	<div class="list" style="overflow: auto; height: 400px">
	    		<table>
	    		<%
	    		if(rplist != null){
	    			for(int i=0; i<rplist.size(); i++){
   				%>
   						<tr>
   							<td style="width: 500px;" id="review_no"><a href="review_reading.jsp?rno=<%=rplist.get(i).getNo()%>"><%=rplist.get(i).getReview_titile() %></a></td>
   							<td class="time"><%=rplist.get(i).getCreated_at() %></td>
   							
   					<%-- 		<td class="hit">조회수 : <%=rplist.get(i).getHits() %></td>
   							<td><input type="button" value="신고"></td> --%>
   							
   						</tr>
   				<%
	    			}
	    		}
	    		%>
	    		</table>
	    	</div>
	    	
	    		<%
		    	if(session.getAttribute("id") == null){
		    		response.sendRedirect(p_helper_path+"/member/login_check.jsp");
		    	}
	    		%>
	    	
	    </div>

	    <div class="space"></div>
	  </form>
	  <%@ include file="/footer.jsp" %>
	</div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
