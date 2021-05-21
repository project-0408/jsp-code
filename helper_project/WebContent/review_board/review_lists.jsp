<%@page import="db.reviewBeans.ReviewPostBean" %>
<%@page import="java.util.ArrayList"%>
<%@page import="db.ReviewBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    	<div class="list" id="review_lists_content" style="overflow: auto; height: 400px">
        <%
        	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
        	ArrayList<ReviewPostBean> rplist = rbDAO.getList();
        %>

        <from>
        <table id="review_lists">
		<%
        if(rplist != null){
        	rbDAO.getList();
            for(int i=0; i<rplist.size(); i++){
        %>
            <tr>
                <td><input type="checkbox" value=""></td>
                <td id="review_no"><a href="review_reading.jsp?no=<%=rplist.get(i).getNo()%>"><%=rplist.get(i).getReview_titile() %></a></td>
                <td><%=rplist.get(i).getReview_hits() %></td>
                <td><%=rplist.get(i).getCreated_at() %></td>
            </tr>
        <%
            }
        }
        for(int i = 0; i<rplist.size(); i++){
    	%>
            <tr>
                <td><%=rplist.get(i).getReview_titile() %></td>
                <td><%=rplist.get(i).getReview_hits() %></td>
                <td><%=rplist.get(i).getCreated_at() %></td>
            </tr>
            <tr>
                <td><%=rplist.get(i).getReview_titile() %></td>
                <td><%=rplist.get(i).getReview_hits() %></td>
                <td><%=rplist.get(i).getCreated_at() %></td>
            </tr>
        <%
        }
        
        %>
        </from>
        </table>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
<%--         <script type="text/javascript">
        
         $('#review_lists_content').scroll(function () {
             var scrollT = $(this).scrollTop(); // 스크롤바의 상단위치
             var scrollH = $(this).height(); // 스크롤 바가 갖는 div의 높이
             var contentH = $('#review_list').height(); // 문서 전체 내용을 갖는 div의 높이
             
             if(scrollT+scrollH+1 >= contentH){
            	 console.log('if in')
            	 console.log(scrollT);
            	 console.log(scrollH);
            	 console.log(contentH);
                 /* ★leni★ 스크롤 시 jdbc 읽어오는 부분 */
                 <%
                 if(rplist != null){
                 	for(int i=0; i<rplist.size(); i++) {
                 %>
                     $('#review_list').append('<tr>'+
                             '<td><input type="checkbox" value=""></td>'+
                             '<td><%=rplist.get(i).getReview_titile() %></td>'+
                             '<td><%=rplist.get(i).getReview_hits() %></td>'+
                             '<td><%=rplist.get(i).getCreated_at() %></td>'+
                             '</tr>');
                     <%
                     }
                 }
                 rplist = null;
                 %>
             }			
         }); --%>
        </script>
        
    </div>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>
