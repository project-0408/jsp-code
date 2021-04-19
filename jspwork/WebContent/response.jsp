<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! 
	public String getCal (){
	Calendar cal = Calendar.getInstance();
	int hour=cal.get(Calendar.HOUR);
	int minute =cal.get(Calendar.MINUTE);
	int second =cal.get(Calendar.SECOND);
	return hour + ":" + minute + ":" + second;
	}
	
	%>

 <% response.setIntHeader("Refresh", 5); 
 	out.print(getCal());
 %>

 <p><a href = "response_data.jsp">Google 홈페이지로 이동하기</a></p>
 
</body>
</html>