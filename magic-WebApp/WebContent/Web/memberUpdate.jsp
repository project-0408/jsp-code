<%@page import="magic.MemberBean"%>
<%@page import="magic.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type = "text/javascript" src="script.js" charset="utf-8"></script>
</head>
<body>
<%
String uid = (String)session.getAttribute("uid");
MemberDBBean maneger = MemberDBBean.getInstance();
MemberBean mb = maneger.getMember(uid);
%>
	<table border="1">
		<form name = "reg_frm" action = "memberUpdateOk.jsp" method = "post">
			<tr>
				<td align="center" colspan = "2"><h1>회원 정보 수정</h1>
				<p>*표시는 필수 항목입니다.</p>
				</td>
			</tr>
			<tr>
				<td align="center">User ID</td>
				<td>
					<%=uid%>
				</td>
			</tr>
			<tr>
				<td align="center">암호</td>
				<td>
					<input type ="password" name = "mem_pw">*
				</td>
			</tr>
			<tr>
				<td align="center">암호 확인</td>
				<td>
					<input type ="password" name = "mem_pw2">*
				</td>
			</tr>
			<tr>
				<td align="center">이 름</td>
				<td>
					<%=mb.getMem_name()%>
				</td>
			</tr>
			<tr>
				<td align="center">E-mail</td>
				<td>
					<input name = "mem_email" name = "mem_email" type ="text" value="<%=mb.getMem_email()%>">*
				</td>
			</tr>
			<tr>
				<td align="center">주 소</td>
				<td>
					<input name = "mem_adress" name = "mem_adress" type ="text"  value="<%=mb.getMem_adress()%>">*
				</td>
			</tr>
			<tr>
				<td align="center" colspan = "2">
					<input type = "submit" value = "등록" onclick= "update_check_ok()">
					<input type = "reset" value = "다시 입력">
					<input type = "submit" value = "수정 안함" onclick = "javascript:window.location='login.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>