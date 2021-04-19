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
	<table border="1">
		<form name = "reg_frm" action = "registerOk.jsp" method = "post">
			<tr>
				<td align="center" colspan = "2"><h1>회원 가입 신청</h1>
				<p>*표시는 필수 항목입니다.</p>
				</td>
			</tr>
			<tr>
				<td align="center">User ID</td>
				<td>
					<input type ="text" name = "mem_uid">*
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
					<input type ="text" name = "mem_name">*
				</td>
			</tr>
			<tr>
				<td align="center">E-mail</td>
				<td>
					<input type ="text" name = "mem_email">*
				</td>
			</tr>
			<tr>
				<td align="center">주 소</td>
				<td>
					<input type ="text" name = "mem_adress">
				</td>
			</tr>
			<tr>
				<td align="center" colspan = "2">
					<input type = "submit" value = "등록" onclick="check_ok()">
					<input type = "reset" value = "다시 입력">
					<input type = "button" value = "가입안함" >
				</td>
			</tr>
		</form>
	</table>
</body>
</html>