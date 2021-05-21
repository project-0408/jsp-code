<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@page import="db.UserDAO"%>
<%@page import="db.userBeans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int creator_no = Integer.parseInt(request.getParameter("creator_no"));

	NoticeDAO dao = NoticeDAO.getInstance();
	NoticeDTO dto = dao.selectView(creator_no);
	

%>

<%-- <%
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
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script type="text/javascript" src="script.js" charset="utf-8"></script>
<link rel="stylesheet" href="../css/notice.css" type="text/css" />
<title>Insert title here</title>
</head>
<script type="text/javascript">
//입력 자료 검사
function notice_check() {
	if (write_form.notify_title.value == "") {
		alert("제목을 입력하세요");
		write_form.title.focus();
	} else if (write_form.notify_detail.value == "") {
		alert("내용을 입력하세요");
		write_form.cont.focus();
	} else
		write_form.submit();
}
</script>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<form action="notice_write_action.jsp" method="POST" name="write_form">
			<div class = "section">
			<div class="detail">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title">
						<p></p>
						<br>
						카테고리 &nbsp;&nbsp;&nbsp;<select name="category">
							<option  value="0">이벤트</option>
							<option value="1">필독 공지</option>
							<option value="2">이용자 제제</option>
						</select>
						<p></p>
						<br>
					</h3>
					
				</ul>
					<ul>
					<h3>상세 내용</h3>
					<textarea cols="60" rows="10" name="detail"></textarea>
					</ul>
			<div class="btn">
				<button type="submit" onclick="notice_check()">작성하기</button>
				<span><button type="reset">다시쓰기</button></span>
			</div>
			</div>
			</div>
		</form>
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/js/notice-write.js"></script>














