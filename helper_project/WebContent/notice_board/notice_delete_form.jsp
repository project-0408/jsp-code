<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		
		//confirm 알림창에서 "확인" 을 하면 삭제 실행
		if(confirm("정말 삭제할까요?")){
			frm.submit();
		}
	}
</script>
</head>
<body>
	<h2>** 글 삭제 **</h2>
	<form action="notice_delete_action.jsp" method="post" name="frm">
		<input type="button" onclick="check()" value="삭제 하기" />
		<input type="button" value="아니요" onclick="location.href='notice_list.jsp'"/>
	</form>
</body>
</html>