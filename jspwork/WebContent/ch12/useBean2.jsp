<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id = "rectangleBean" class = "area.Rectangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>�簢���� ���� ����ϱ�</h4>
	<% 
		rectangleBean.setW(20);
		rectangleBean.setH(30);
		out.println("���� 20, ���� 30�� �簢���� ������ "+rectangleBean.process());
	%>
</body>
</html>