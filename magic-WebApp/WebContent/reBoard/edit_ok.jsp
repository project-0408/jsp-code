<%@page import="magic.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<jsp:useBean id="board" class="magic.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board"/>
<%
	//int b_id = Integer.parseInt(request.getParameter("b_id"));
	//board.setB_id(b_id);
	
	BoardDBBean db=BoardDBBean.getInstance();
	int re = db.editBoard(board);
	
	if(re == 1){
		response.sendRedirect("list.jsp");
	}else if(re == 0){
%>
		<script language="JavaScript" >
			alert("��й�ȣ�� ���� �ʽ��ϴ�.");
			history.go(-1);
		</script>
<%
	}else if(re == -1){
%>
		<script language="JavaScript" >
			alert("������ �����Ͽ����ϴ�.");
			history.go(-1);
		</script>
<%
	}
%>

















