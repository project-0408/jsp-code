<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<%@ include file="/header.jsp"%>
		<link rel="stylesheet" href="<%=p_helper_path %>/css/board_writer.css" type="text/css" />
		<script type="text/javascript" src="script.js" charset="utf-8"></script>
 		<script type="text/javascript" src="write_checking.js" charset="utf-8"></script>
 	<%
		String user_no = (String)session.getAttribute("no");
		if(user_no == null){
		%>
		<script>
			alert("로그인 먼저 하세요.");
			location.href="<%=p_helper_path %>/member/login.jsp";
		</script>
		<%	
		}
		%>
		<title>구인 게시글 작성</title>
	</head>
	<body class="total">
		<form action="job_write_ok.jsp" name="form" method="POST" onsubmit="return write_ok()">
			<div class = "section">
				<h1>구인 게시글 작성</h1>
				<div class="date">
				<hr>
					<ul>
						<h3>
							제목 &nbsp;&nbsp;&nbsp;
							<input type="text" name="job_title" class ="title">
						</h3>
					</ul>
					<ul>
						<h3>공고기간</h3>
					</ul>
					<ul>
					<!-- 데이, 타임 입력 -->
					<jsp:include page="../util/datepicker.jsp"></jsp:include>
					</ul>
				</div>
				<div class="detail">
					<ul>
						<h3>상세공고</h3>
					</ul>
					<ul>
						<h4>
							카테고리 &nbsp;&nbsp;&nbsp; 
							<select name="category" id="category">
								<option value='4'>선택안함</option>
								<option value='5'>가사도우미</option>
								<option value='6'>청소도우미</option>
								<option value='7'>등하원도우미</option>
								<option value='8'>요리도우미</option>
								<option value='9'>산후도우미</option>
								<option value='10'>식당도우미</option>
								<option value='11'>육아도우미</option>
								<option value='12'>펫시터</option>
								<option value='13'>베이비시터</option>
								<option value='14'>요양보호사</option>
								<option value='15'>대리티켓구매</option>
								<option value='16'>직구대행</option>
								<option value='17'>기타</option>
							</select>
						</h4>
					</ul>
					<ul>
						<h4>
							인원수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="number" value="1" min="1" max="5" name="job_num_of_people">
						</h4>
					</ul>
					<ul>
						<h4>
							<!-- 주소 입력 -->
							<script type="text/javascript" src="<%=p_helper_path %>/util/juso2.js" ></script>
							도로명 주소 
							<input  type="text"  style="width:auto;" id="location_addr" name="location_addr" readonly/>
							<input type="button" onClick="goPopup();" value="주소 찾기"/><br>
							상세 주소&nbsp;&nbsp;&nbsp;
							 <input type="text" name="location_detail">
							 <input type="hidden" name="location_first_name" />
							<input type="hidden" name="location_second_name" />
							
						</h4>
					</ul>
					<ul>
						<h4>
							금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="number" name="job_pay">&nbsp;원
						</h4>
					</ul>
					<ul>
						<h4>상세</h4>
						<textarea cols="100" rows="10" name="job_detail"></textarea>
					</ul>
				</div>
				<div class="btn">
					<button type="submit" >신청하기</button>
					<span><button type="reset">다시쓰기</button></span>
					
				</div>
			</div>
		</form>
		<div class="clear"></div>
	</body>
	<%@ include file="/footer.jsp" %>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














