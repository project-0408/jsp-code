<%@page import="magic.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mb" class="magic.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>
<%
	String uid = (String)session.getAttribute("uid");
	mb.setMem_uid(uid);
	
	MemberDBBean manager=MemberDBBean.getInstance();
	int re = manager.updateMember(mb);
	
	if(re == 1){
%>
		<script>
			alert("�Է��ϽŴ�� ȸ�� ������ �����Ǿ����ϴ�.");
			document.location.href="main.jsp";
		</script>
<%
	}else{
%>
		<script>
			alert("������ ���еǾ����ϴ�.");
			history.go(-1);
		</script>
<%
	}
%>
