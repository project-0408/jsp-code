<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
        String user_no=(String)session.getAttribute("no");
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
	int i,no,creator_no,hits;
	String title,detail,category;
	Timestamp created_at;
	
	SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd hh:mm");
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
      <form action = "notice_write.jsp" method = "post">
        <h1>공지 사항</h1>
        <br>
        <br>
        <div class="section">
            <div class="list" style="overflow: auto; height: 400px">
                <table>
                    <tr>
                       
                        <th style="width: 100px;">카테고리</th>
                        <th style="width: 600px;"><a href="#">제목</a></th>
                        <th style="width: 100px;">게시일</th>
                        <th style="width: 80px;">작성자</th>
                    </tr>
           <%
				for(i=0; i<list.size(); i++){
					NoticeDTO dto = list.get(i);
					no = dto.getNo();
					category =dto.getCategory();
					title = dto.getTitle();
					created_at = dto.getCreated_at();
			%>
                    
                    
						<tr>
							
							<td><%= list.get(i).getCategory() %></td>
							<td><a href="notice_reading.jsp?no=<%= no%>"><%= list.get(i).getTitle()%></a></td>
							<td><%=sdf.format(created_at) %></td>
							<td>관리자</td>
						</tr>
					<%
					System.out.println(no);
				}
					%>
                </table>
            </div>
			<%
			String id = (String)session.getAttribute("id");
			boolean check = id.startsWith("ADMIN_");
				if(check==true){
	            %>
            <div class="button">
	            <button type="submit">글쓰기</button>
			</div>
	            <%
			}
			%>
         
        </div>
      </form>
      <div class ="space"></div>
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>