<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.jobBoardBeans.JobPostSubBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<!DOCTYPE html>
<html>
        <!-- ★leni★ class list 사용하는지 여쭤보고 수정가능하면 수정하기 -->
    	<div class="list" id="job_board_content" style="overflow: auto; height: 400px">
        <%
        String location_first = request.getParameter("location_first");
        String location_second = request.getParameter("location_second");
        JobPostDAO jpDAO = JobPostDAO.getInstance();
        jpDAO.setCount(location_first, location_second);
        ArrayList<JobPostSubBean> jpsl = jpDAO.getList(location_first, location_second);
        
        %>

        <from>
        <table id="job_board">
		<%
        if(jpsl != null){
            for(int i=0; i<jpsl.size(); i++){
        %>
            <tr>
                <td id="job_location"><%=jpsl.get(i).getLocation() %></td>
                <td id="job_title"><a href="job_detail.jsp?no=<%=jpsl.get(i).getNo()%>"><%=jpsl.get(i).getJob_titile() %></a></td>
                <td><%=jpsl.get(i).getJob_pay() %></td>
                <td ><%=jpsl.get(i).getJob_day() %></td>
                <td id="job_time"><%=jpsl.get(i).getTime() %></td>
                <td><%=jpsl.get(i).getCreated_at() %></td>
            </tr>
        <%
            }
        }
        %>
        </from>
        </table>

        <script type="text/javascript">
        
         $('#job_board_content').scroll(function () {
             var scrollT = $(this).scrollTop(); // 스크롤바의 상단위치
             var scrollH = $(this).height(); // 스크롤 바가 갖는 div의 높이
             var contentH = $('#job_board').height(); // 문서 전체 내용을 갖는 div의 높이
             
             if(scrollT+scrollH+1 >= contentH){
            	 console.log('if in')
            	 console.log(scrollT);
            	 console.log(scrollH);
            	 console.log(contentH);
                 /* ★leni★ 스크롤 시 jdbc 읽어오는 부분 */
                 <%
                 jpsl = jpDAO.getList(location_first, location_second);
                 if(jpsl != null){
                 	for(int i=0; i<jpsl.size(); i++) {
                 %>
                     $('#job_board').append('<tr>'+
                             '<td><input type="checkbox" value=""></td>'+
                             '<td id="job_location"><%=jpsl.get(i).getLocation() %></td>'+
                             '<td id="job_title"><a href="job_detail.jsp?no=<%=jpsl.get(i).getNo()%>"><%=jpsl.get(i).getJob_titile() %></td>'+
                             '<td><%=jpsl.get(i).getJob_pay() %></td>'+
                             '<td><%=jpsl.get(i).getJob_day() %></td>'+
                             '<td id="job_time"><%=jpsl.get(i).getTime() %></td>'+
                             '<td><%=jpsl.get(i).getCreated_at() %></td>'+
                             '</tr>');
                     <%
                     }
                 }
                 jpsl = null;
                 %>
             }			
         });
        </script>
        
    </div>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>
