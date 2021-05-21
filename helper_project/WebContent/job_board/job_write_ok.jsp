<%@page import="java.io.PrintWriter"%>
<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%
request.setCharacterEncoding("UTF-8");
String user_no = (String)session.getAttribute("no");
String p_helper_path = request.getContextPath();
%>
<jsp:useBean id="jp" class="db.jobBoardBeans.JobPostBean"></jsp:useBean>
<jsp:setProperty property="*" name="jp"/>

<!-- String no = session.getAttribute("no").toString(); -->
<%
 
/* System.out.println("-----------------------------------------");
System.out.println("user no: "+user_no); 
System.out.println("title: "+jp.getJob_title());
System.out.println("time day: "+jp.getJob_day());
System.out.println("time start: "+jp.getJob_time_start());
System.out.println("time end: "+jp.getJob_time_end());
System.out.println("category: "+jp.getCategory());
System.out.println("number: "+jp.getJob_num_of_people());
System.out.println("location first: "+jp.getLocation_first_name());
System.out.println("location second: "+jp.getLocation_second_name());
System.out.println("location addr: "+jp.getLocation_addr());
System.out.println("location detail: "+jp.getLocation_detail());
System.out.println("pay: "+jp.getJob_pay());
System.out.println("detail: "+jp.getJob_detail());
 */
jp.setCreator_no(Integer.valueOf(user_no));

JobPostDAO jpDAO = JobPostDAO.getInstance();
if(jpDAO.addPost(jp) == true ){
	response.sendRedirect(p_helper_path+"/job_board/job_main.jsp");
}
%>