<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center><h3>[���� ���� ������ ����]</h3></center>
<hr>
	���� ���ǰ��� ������ �����ϴ�.
<hr>
	<%
	Object Iobj_getdata = session.getAttribute("Testing");
	
	String Is_getdata = (String)Iobj_getdata;
	
	int li_primitive = (Integer)session.getAttribute("MyData");
	
	out.println("������ ���ǰ�[1] => " + Is_getdata + "<br><br>");
	out.println("������ ���ǰ�[2] => " + li_primitive + "<hr>");
	%>
</body>
</html>