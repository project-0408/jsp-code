<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String p_helper_path = request.getContextPath();
String user_no = (String)session.getAttribute("no");
%>
<jsp:useBean id="user" class="db.userBeans.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<%
user.setNo(Integer.valueOf(user_no));

/* System.out.println("---------------------------------");
System.out.println("no: "+user.getNo());
System.out.println("pw: "+user.getPw());
System.out.println("birth_yy: "+user.getBirth_yy());
System.out.println("birth_mm: "+user.getBirth_dd());
System.out.println("birth_dd: "+user.getBirth_mm());
System.out.println("email: "+user.getEmail());
System.out.println("location_first_name: "+user.getLocation_first_name());
System.out.println("location_second_name: "+user.getLocation_second_name());
System.out.println("location_addr: "+user.getLocation_addr()); 
System.out.println("location_detail: "+user.getLocation_detail()); */

UserDAO uDAO = UserDAO.getInstance();
if(uDAO.updateUser(user)){
%>
<script>
	alert("수정이 완료되었습니다.");
</script>
<%
} else {
%>
<script>
	alert("수정에 실패하였습니다.");
</script>
<%
}%>
<script>
location.href="<%=p_helper_path%>/mypage/mypage_import.jsp"
</script>