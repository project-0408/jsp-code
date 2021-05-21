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
<<<<<<< Updated upstream
<body>
	<div class="total">
	  <%
	  	ReviewPostBean rpb = new ReviewPostBean();
	  	
    	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
    	ArrayList<ReviewPostBean> rplist = rbDAO.getList();
	  	String title;
	  	Timestamp createdat;
	  	int hits;
	  %>
	  <%@ include file="/header.jsp" %>
	  <form action="">
	    <h1>후기 게시판</h1>
	    <div class="section">
	    <div class="search">
	    		<%
	    	if(session.getAttribute("id") == null){
	    		%>
	    		<a href="/project_helper/member/login_check.jsp"><h4>글쓰기</h4></a>
	    		<%
	    	}else{
	    		%>
	    		<a href="review_writer.jsp"><h4>글쓰기</h4></a>
	    		<%
	    	}
	    		%>
	    	<ul>
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
	    	</ul>
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
   							<td class="hit">조회수 : <%=rplist.get(i).getReview_hits() %></td>
   							<td><input type="button" value="신고"></td>
   						</tr>
   				<%
	    			}
	    		}
	    		%>
	    		</table>
	    	</div>
	    </div>
	    <div class="button">
	    	<button type="submit" onclick="location.href='main.jsp'">뒤로가기</button>
	    </div>
	    <div class="space"></div>
	  </form>
	  <%@ include file="/footer.jsp" %>
	</div>
=======
  <body>
    <div class="total">
      <form>
        <h1>후기 게시판</h1>
        <div class="section">
        <div class="serch">
              
        		 <a href = "review_writer.jsp"><h4>글쓰기</h4></a>
        		
          <ul>
              <h3>
             	 검색 <input type= "text" value=""> &nbsp; &nbsp;
                <select>
                  <option value="local">전체</option>
                  <option value="local">서울</option>
                  <option value="local">부산</option>
                  <option value="local">대구</option>
                  <option value="local">대전</option>
                </select>&nbsp; &nbsp;
           			<select>
                    <option value="">인기글</option>
                    <option value="">최신글</option>
                  </select>&nbsp; &nbsp;
              </h3>
            </ul>
        </div>
            <div class="list"  style="overflow: auto; height: 400px">
                <table>
                    <tr>
                        <td style="width: 500px;"><a href="#">친절한 초읍동 주민들</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">부산진구 연지동 00아파트 베이비시터 알바 조심</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">초읍 시민도서관 대신 책반납 후기</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">서면 동물병원 일일 동물 병원 지킴이 후기</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>
                    <tr>
                        <td style="width: 500px;"><a href="#">제목</a></td>
                        <td class="time">21/04/27</td>
                        <td class="hit">조회수 : 00 </td>
                        <td><input type="button" value="신고"></td>
                    </tr>                               
                </table>
            </div>
        </div>
         <div class="button">
				<button type="submit" onclick="location.href='main.jsp'">뒤로가기</button>
			</div>
        </div>
         <div class ="space"></div>
      </form>
     <%@ include file="/footer.jsp" %>
    </div>
>>>>>>> Stashed changes
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>



































