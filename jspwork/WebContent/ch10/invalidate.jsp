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
		String s_value = "저는 세션에 저장된 첫 번째 값이에요.";
		session.setAttribute("s_name1", s_value);
		
		s_value = "저는 세션에 저장된 두 번째 값이에요.";
		session.setAttribute("s_name2", s_value);
		
		s_value = "저는 세션에 저장된 세 번째 값이에요.";
		session.setAttribute("s_name3", s_value);
		
		out.println("<hr><h3>------------------세션값을 삭제하기 전---------------------</h3> ");
		
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()){
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.println("<hr>얻어온 세션 이름 [" + i + "] : " + s_name);
			out.println("<br>얻어온 세션 값 [" + i + "] : " + s_value);
		}
				
		session.invalidate();
		
		out.println("<hr><h3>------------------세션값을 삭제하기 후---------------------</h3> ");
		out.println("<hr>과연 세션 아이디가 유효할까요?<br>");
		
		if(request.isRequestedSessionIdValid()==true){
			out.println("세션 아이디가 유효합니다.<br>");
		}else{
			out.println("세션 아이디가 유효하지 않습니다.<br>");			
		}
		
		%>
	

</body>
</html>