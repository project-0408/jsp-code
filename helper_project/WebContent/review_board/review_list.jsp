<%@page import="db.reviewBeans.ReviewBoard"%>
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
	  	ReviewPostBean rpb = new ReviewPostBean();
	  	
    	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
    	ArrayList<ReviewBoard> rplist = rbDAO.getList();
	  	String title;
	  	Timestamp createdat;
	  	int hits;
	  %>
	  <%@ include file="/header.jsp" %>
	  <form>
	    <h1>후기 게시판</h1>
	    <div class="section">
	    	<!-- <ul>
	    		<h3>
	    			검색 <input type="text" value=""> &nbsp;&nbsp;
	    			<select>
	    			  <option value="local">전체</option>
	    			  <option value="local">서울</option>
	    			  <option value="local">부산</option>
	    			  <option value="local">대구</option>
	    			  <option value="local">대전</option>
	    			</select>&nbsp;&nbsp;
	    			<select>
	    			  <option value="local">인기글</option>
	    			  <option value="local">최신글</option>
	    			</select>&nbsp;&nbsp;
	    		</h3>
	    	</ul> -->
	    </div>
	    	<div class="list" style="overflow: auto; height: 400px">
	    		<table>
	    		<%
	    		if(rplist != null){
	    			for(int i=0; i<rplist.size(); i++){
   				%>
   						<tr>
   							<td style="width: 500px;" id="review_no"><a href="review_reading.jsp?rno=<%=rplist.get(i).getNo()%>"><%=rplist.get(i).getTitle() %></a></td>
   							<td class="time"><%=rplist.get(i).getCreatedat() %></td>
   							
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
	    		%>
	    		<div class="button">
	    		<button type="button" onclick="location.href='/<%=p_helper_path%>/member/login_check.jsp'">후기작성</button>
	    		</div>
	    		<% 
	    	}else{
	    		%>
	    		<div class="button">
	    		<button type="button" onclick="location.href='review_writer.jsp'">후기작성</button>
	    		</div>
	    		<%
	    	}
	    		%>
	    	
	    </div>
	    
	 <!--    <div class="button">
	    	<button type="submit" onclick="location.href='main.jsp'">뒤로가기</button>
	    </div> -->
	    <div class="space"></div>
	  </form>
	  <%@ include file="/footer.jsp" %>
	</div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>
