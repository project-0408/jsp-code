<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <jsp:useBean id = "circlebean" class = "area.Circle"></jsp:useBean>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>���� ���� ����Ͻ�</h4>
	�������� 10�� ���� ������ 
	<% circlebean.setR(10.0);%>
	<%=	circlebean.process() %>

</body>
</html>