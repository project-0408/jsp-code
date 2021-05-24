<%@page import="java.sql.Timestamp"%>
<%@page import="db.notifyBoardBeans.NoticeDTO"%>
<%@page import="db.notifyBoardBeans.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
		request.setCharacterEncoding("utf-8");
		NoticeDAO dao =NoticeDAO.getInstance();
		String no = request.getParameter("no");
		NoticeDTO dto =dao.selectView(no);
		System.out.println("값:"+no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/notice.css" type="text/css" />
</head>
<script type="text/javascript">
//입력 자료 검사
function check() {
	if (modify_form.title.value == "") {
		alert("제목을 입력하세요");
		modify_form.title.focus();
	} else if (modify_form.detail.value == "") {
		alert("내용을 입력하세요");
		modify_form.detail.focus();
	} else
		modify_form.submit();
}
</script>
<body>
<div class="total">
		 <%@ include file="/header.jsp" %>
		 <h2 style="text-align:center;"> < 글 수정 > </h2>
		<form name="modify_form" method="post" action = "notice_modify_action.jsp?no=<%=no%>">
			<div class = "section">
			<div class="detail">
				<ul>
					<h3>
						제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title" value="<%=dto.getTitle()%>">
						<p></p>
						<br>
						<p></p>
						<br>
					</h3>
				</ul>
					<ul>
					<h3>상세 내용</h3>
					<textarea cols="80" rows="10" name="detail"><%=dto.getDetail()%></textarea>
					</ul>
			<div class="btn">
				<button type="submit" onclick="check()">수정하기</button>
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