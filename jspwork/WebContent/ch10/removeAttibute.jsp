<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[������ ���� ���� �����ϴ� ����]</h3></center>
	<hr>
	removeAttribute() �޼ҵ带 ����Ͽ� ���ǰ��� �����ϴ� ���� �Դϴ�.
	
	<% 
		String s_name;
		String s_value = "���� ���ǿ� ����� ù ��° ���̿���.";
		session.setAttribute("s_name1", s_value);
		
		s_value = "���� ���ǿ� ����� �� ��° ���̿���.";
		session.setAttribute("s_name2", s_value);
		
		s_value = "���� ���ǿ� ����� �� ��° ���̿���.";
		session.setAttribute("s_name3", s_value);
		
		out.println("<hr><h3>------------------���ǰ��� �����ϱ� ��---------------------</h3> ");
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()){
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.println("<hr>���� ���� �̸� [" + i + "] : " + s_name);
			out.println("<br>���� ���� �� [" + i + "] : " + s_value);
		}
				
		session.removeAttribute("s_name2");
		
		out.println("<hr><h3>------------------���ǰ��� �����ϱ� ��---------------------</h3> ");
		Enumeration enum_app1 = session.getAttributeNames();
		i = 0;
		
		while(enum_app1.hasMoreElements()){
			i++;
			s_name = enum_app1.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.println("<hr>���� ���� �̸� [" + i + "] : " + s_name);
			out.println("<br>���� ���� �� [" + i + "] : " + s_value);
		}
				
	%>
	
	
	
	
	
	
</body>
</html>