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
	public String calDate(){
	Calendar cal = Calendar.getInstance();
	return cal.get(Calendar.YEAR)+"-"+(cal.get(Calendar.MONTH)+2)+"-"+cal.get(Calendar.DATE);
	}
	%>
	다음 달 = 
	<%=calDate()%>
	

</body>
</html>