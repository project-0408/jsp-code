<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%--  <%
        String user_no = (String)session.getAttribute("no");
        if(user_no == null){
        %>
        <script>
            alert("로그인 먼저 하세요.");
            location.href="/helper_project/member/login.jsp";
        </script>
        <%
        }
        %> --%>
<%
	
	NoticeDAO dao = NoticeDAO.getInstance();
	String no = request.getParameter("no");
	NoticeDTO dto = dao.selectView(no);
	
	System.out.println("view:"+no);
		
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
     <%@ include file="/header.jsp" %>
     <center>
		<table cellspacing="0" width="800" border="1" >
			<tr align="center">
				 <td width="100">작성자</td>
				<td width="200">관리자 </td>
				<td width="100">작성일</td>
				<td width="200"><%= dto.getCreated_at() %> </td>
			</tr>
			<tr >
				<td width="100" align="center" >글제목</td>
				<td colspan="3"><%= dto.getTitle() %> </td>
			</tr>
			<tr>
				<td width="100" height="400" align="center" >글내용</td>
				<td colspan="3"><%= dto.getDetail() %> </td>
			</tr>
			<tr>
				<td colspan="4" align="right" height="50" >
               <div  class="btn">
			<%
			String id = (String)session.getAttribute("id");
			boolean check = id.startsWith("ADMIN_");
				if(check==true){
	            %>
            
               <button type="submit" onclick="location.href='notice_modify_form.jsp?no=<%=no %>'">수정하기</button>
               <button type="submit" onclick="location.href='notice_delete.jsp?no=<%=no %>'" >삭제하기</button>
	            <%
			}
			%>
               <button type="submit" onclick="location.href='notice_list.jsp'">글목록</button>
				</div>
				</td>
			</tr>
		</table>
	</center>
     
      <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>