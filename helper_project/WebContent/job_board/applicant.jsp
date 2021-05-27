<%@page import="db.userBeans.UserBean"%>
<%@page import="db.UserDAO"%>
<%@page import="db.volunteerBeans.VolunteerBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.VolunteerDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<style>
		table tr td h3{padding:5px 10px;}
		
		.a button{
		width:50px;
    	background-color: blue;
    	border: none;
    	color:#fff;
    	text-align: center;
    	text-decoration: none;
    	font-size: 13px;
    		cursor: pointer;
		}
		.b {
		margin-top : 50px;
		}
		
	</style>
</head>
<body>
<%
	String post_no = request.getParameter("post_no");

	VolunteerDAO vDAO = VolunteerDAO.getInstance();
    UserDAO uDAO = UserDAO.getInstance();

%>
	<table>
	<h4>지원자</h4>
		<tr>
			<th><h3>지원자</h3></th>
			<th><h3>닉네임</h3></th>
			<th><h3>신용등급</h3></th>
		</tr>
			<%
			/* 고려중인 사람 목록 출력 */
		    ArrayList<VolunteerBean> list = vDAO.getList(post_no, "0");
			for(int i = 0 ; i < list.size() ; i++){
				UserBean user = uDAO.getN_user(list.get(i).getUser_no());
				%>
					<tr>
						<td><%=user.getId()%></td>
						<td><%=user.getNick()%></td>
						<td><%=user.getGrade()%></td>
					
						<td id="pass_<%=user.getNo()%>"><button class="a" onclick="applicant_ok(<%=post_no%>, <%=user.getNo()%>)">수락</button></td>
						<td id="fail_<%=user.getNo()%>"><button class="a" onclick="applicant_fail(<%=post_no%>, <%=user.getNo()%>)">거절</button></td>
						<td id="result_div_<%=user.getNo()%>"  colspan="2" hidden="true"></td>
						<script>
							function applicant_ok(post_no, user_no){
								window.open('applicant_ok.jsp?post_no='+post_no+'&user_no='+user_no+'&state=1','ok','width=1,height=1,location=no,status=no,scrollbars=yes');
							}
							
							function applicant_fail(post_no, user_no){
								window.open('applicant_ok.jsp?post_no='+post_no+'&user_no='+user_no+'&state=2','ok','width=1,height=1,location=no,status=no,scrollbars=yes');
							}
							
							function call_back(isSuccess, user_no){
								if (isSuccess == '1'){
									$('#pass_'+user_no).hide();
									$('#fail_'+user_no).hide();
									$('#result_div_'+user_no).show();
									$('#result_div_'+user_no).text("승인완료");
								}
								else if (isSuccess == '2') {
									$('#pass_'+user_no).hide();
									$('#fail_'+user_no).hide();
									$('#result_div_'+user_no).show();
									$('#result_div_'+user_no).text("거절완료");
								}
							}
						</script>
					</tr>
				<%
			}
			%>
	</table>
			<hr>
		<table>
		<h4>합격자</h4>
		<tr>
			<th><h3>지원자</h3></th>
			<th><h3>닉네임</h3></th>
			<th><h3>신용등급</h3></th>
		</tr>
			<%
			/* 승인완료 된 사람 목록 출력 */
		    ArrayList<VolunteerBean> okList = vDAO.getList(post_no, "1");
			for(int i = 0 ; i < okList.size() ; i++){
				UserBean user = uDAO.getN_user(okList.get(i).getUser_no());
				%>
					<tr>
						<td><%=user.getId()%></td>
						<td><%=user.getNick()%></td>
						<td><%=user.getGrade()%></td>
						<td id="result_div_<%=user.getNo()%>"  colspan="2" >승인 완료</td>
						
					</tr>
				<%
			}
			%>
	</table>
	<center>
			<button class= "b" onclick="window.opener.location.reload();window.close();">Close Me</button>
	</center>
	
</body>
</html>