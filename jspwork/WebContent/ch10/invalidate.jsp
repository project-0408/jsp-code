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
				
		session.invalidate();
		
		out.println("<hr><h3>------------------���ǰ��� �����ϱ� ��---------------------</h3> ");
		out.println("<hr>���� ���� ���̵� ��ȿ�ұ��?<br>");
		
		if(request.isRequestedSessionIdValid()==true){
			out.println("���� ���̵� ��ȿ�մϴ�.<br>");
		}else{
			out.println("���� ���̵� ��ȿ���� �ʽ��ϴ�.<br>");			
		}
		
		%>
	

</body>
</html>