<%@page import="java.io.File"%>
<%@page import="magic.BoardBean"%>
<%@page import="magic.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int number = Integer.parseInt(request.getParameter("number"));
	String b_pwd = request.getParameter("b_pwd");

	BoardDBBean db = BoardDBBean.getInstance();
	int re = db.deleteBoard(number,b_pwd);
	
	BoardBean board = db.getBoard(number);
	String up ="D:\\JMC\\eclipseWorkspace\\magic-WebApp\\upload\\";
	String fname = board.getB_fname();
	
	
	if(re == 1){
		if(fname != null){
			File file = new File(up+fname);
			file.delete();
		}
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
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>









