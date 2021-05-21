<%@page import="java.sql.Timestamp"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
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
	NoticeDAO dao = NoticeDAO.getInstance();
	ArrayList<NoticeDTO>list = dao.getDataAll() ;
	int i,no,creator_no,category,hits;
	String title,detail;
	Timestamp created_at;
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/notice.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
 <body>
    <div class="total">
      <%@ include file="/header.jsp" %>
      <form>
        <h1>공지 사항</h1>
        <div class="section">
        <div class = "serch">
              <h3>검색 <input type= "text" value=""> &nbsp; &nbsp;</h3>
        </div>
            <div class="list" style="overflow: auto; height: 400px">
                <table>
                    <tr>
                        <th>글번호</th>
                        <th>카테고리</th>
                        <th style="width: 500px;"><a href="#">제목</a></th>
                        <th>게시일</th>
                        <th>작성자</th>
                        <th>조회수 </th>
                    </tr>
           <%
				for(i=0; i<list.size(); i++){
					NoticeDTO dto = list.get(i);
					no = dto.getNo();
					category =dto.getCategory();
					title = dto.getTitle();
					creator_no = dto.getCreator_no();
					created_at = dto.getCreated_at();
					hits = dto.getHits();
			%>
                    
                    
						<tr>
							<td><%=no%></td>
							<td><%= category %></td>
							<td><a href="notice_reading.jsp?no=<%= no%>"><%= title%></a></td>
							<td><%=created_at%></td>
							<td><%=creator_no%></td>
							<td><%=hits%></td>
						</tr>
					<%
					System.out.println(no);
				}
					%>
                </table>
            </div>
            <div class="button">
            <%--  <%
			String admin_id = request.getParameter("id");
			String admin_pass = request.getParameter("pass");
			boolean b = admin.admin_login(admin_id, admin_pass);
			
			if(b){
				session.setAttribute("adminOk", admin_id);
			%> --%>
			<button type="submit" onclick="location.href='notice_write.jsp'">글쓰기</button>
			<%-- 
        		<%
			}
                     %>
				 --%>
			</div>
        </div>
      </form>
      <div class ="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>