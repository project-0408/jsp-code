<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR" />
<%@ include file="/header.jsp"%>
<link rel="stylesheet" href="<%=p_helper_path%>/css/post_detail.css"
	type="text/css" />
<script type="text/javascript" src="script.js" charset="utf-8"></script>

<%
String job_post_no = request.getParameter("no");
int user_no;
try {
	user_no = Integer.valueOf((String) session.getAttribute("no"));
} catch (NumberFormatException e) {
	user_no = 0;
}

JobPostDAO jpDAO = JobPostDAO.getInstance();
JobPostBean jp = jpDAO.getPost(user_no, job_post_no);

%>
<title><%=jp.getJob_title()%></title>
</head>
<body>
	<div class="main_content">
		<!-- form 태그 필요 없을 듯? 있나..? -->
		<form action="job_write_fix.jsp?no=<%=job_post_no%>" method="POST">
			<div class="section">
				<ul>
					<div class="title">
						<h3><%=jp.getJob_title()%></h3>
					</div>
				</ul>
				<ul>
					<div class="local">
						<img src="<%=p_helper_path%>/images/img.jpg"
							style="width: 100px; height: 100px">
						<h3><%=jp.getCreator_nick()%></h3>
						<h5>
							신뢰등급 :
							<%=jp.getCreator_grade()%></h5>
						<br>
						<h3>
							장소 :
							<%=jp.getLocation()%></h3>
						<br>
						<h3>
							시간 :
							<%=jp.getJob_day()%>
							<%=jp.getTime()%></h3>
						<br>
						<h3>
							카테고리 :
							<%
							if (jp.getCategory() == 5) {
						%>가사도우미<%
							} else if (jp.getCategory() == 6) {
						%>청소도우미<%
							} else if (jp.getCategory() == 7) {
						%>등하원도우미<%
							} else if (jp.getCategory() == 8) {
						%>요리도우미<%
							} else if (jp.getCategory() == 9) {
						%>산후도우미<%
							} else if (jp.getCategory() == 10) {
						%>식당도우미<%
							} else if (jp.getCategory() == 11) {
						%>육아도우미<%
							} else if (jp.getCategory() == 12) {
						%>펫시터<%
							} else if (jp.getCategory() == 13) {
						%>베이비시터<%
							} else if (jp.getCategory() == 14) {
						%>요양보호사<%
							} else if (jp.getCategory() == 15) {
						%>대리티켓구매<%
							} else if (jp.getCategory() == 16) {
						%>직구대행<%
							} else if (jp.getCategory() == 17) {
						%>기타<%
							}
						%>
						</h3>
						<br>
						<table>
							<tr>
								<td><h3>모집 인원 :</h3></td>
								<td><h3><%=jp.getJob_num_of_people()%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</h3></td>
								<td><h3 id="my_state"><%=jp.getMy_state()%></h3></td>
							</tr>
							<tr>
								<td><h3>승인 인원 :</h3></td>
								<td><h3 id="worker_count" ><%=jp.getWorker_count()%></h3></td>
							</tr>
						</table>
						<h3>
							PAY :
							<%=jp.getJob_pay()%></h3>
					</div>

				</ul>
				<ul>
					<div class="content">
						<h3>상세 설명</h3>
						<br />
						<div style="width: auto; height: 400px"><%=jp.getJob_detail()%></div>
					</div>
				</ul>
			</div>
			<div class="botton">
				<%
					if (user_no == jp.getCreator_no()) {
				%>
				<button type="submit">수정하기</button>
				<button type="button" onclick="removeCheck()">삭제하기</button>
				<button type="button" onclick="opner()">지원현황</button>
				<script>
					function opner(){
						var win = window.open('applicant.jsp?post_no=<%=job_post_no%>','','width=400px,height=400px')
						var win_timer = setInterval(function() {   
						      if(win.closed) {
						          window.location.reload();
						          clearInterval(win_timer);
						      } 
					      }, 100); 
					}
				</script>
				<%
					} else {
						if(jp.getMy_state().equals(" ")){
				%>
							<button type="button" onclick="change()" id="apply">신청하기</button>
				<%
						}
						else if(jp.getMy_state().equals("승인")){
				%>
							<button type="button"  id="apply" disabled >당첨!</button>
				<%
						} else {
				%>
							<button type="button"  id="apply" disabled >신청중</button>
				<%
						}
					}
				%>
				<script>
          function change() {
        	  		if(document.getElementById("apply").innerHTML=="신청하기"){
        		 		 if(confirm("정말로 신청하시겠습니까?") == true){
        		 			 document.location.href="<%=p_helper_path%>/job_board/job_apply_ok.jsp?no=<%=job_post_no%>";
        		 			/* const target = document.getElementById('apply');
        			  		target.disabled = true;
        			  		document.getElementById("apply").innerHTML="신청중";
        			  		document.getElementById("state").innerHTML="지원중"; */
        		  }else{
        			  btn.disabled = false;
        		  }
        	  }
        	  }
          function removeCheck(){
        	  if(confirm("정말 삭제하겠습니까?") == true){
        		  document.location.href="<%=p_helper_path%>/job_board/job_delete.jsp?no=<%=job_post_no%>";
        	  }
          }
          </script>
				<!-- 수정하기 버튼도 여기 만들기 세션이용해서 구분하면 됨 -->
			</div>
		</form>
	</div>
</body>
<%@ include file="/footer.jsp"%>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>