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
				<td align="center" colspan = "2"><h1>ȸ�� ���� ����</h1>
				<p>*ǥ�ô� �ʼ� �׸��Դϴ�.</p>
				</td>
			</tr>
			<tr>
				<td align="center">User ID</td>
				<td>
					<%=uid%>
				</td>
			</tr>
			<tr>
				<td align="center">��ȣ</td>
				<td>
					<input type ="password" name = "mem_pw">*
				</td>
			</tr>
			<tr>
				<td align="center">��ȣ Ȯ��</td>
				<td>
					<input type ="password" name = "mem_pw2">*
				</td>
			</tr>
			<tr>
				<td align="center">�� ��</td>
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
				<td align="center">�� ��</td>
				<td>
					<input name = "mem_adress" name = "mem_adress" type ="text"  value="<%=mb.getMem_adress()%>">*
				</td>
			</tr>
			<tr>
				<td align="center" colspan = "2">
					<input type = "submit" value = "���" onclick= "update_check_ok()">
					<input type = "reset" value = "�ٽ� �Է�">
					<input type = "submit" value = "���� ����" onclick = "javascript:window.location='login.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>