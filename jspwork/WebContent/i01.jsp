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
	<%@ include file =  "h01.jsp" %>
	
	<%!
	public String calDate(){
	Calendar cal = Calendar.getInstance();
	return cal.get(Calendar.YEAR)+"-"+(cal.get(Calendar.MONTH)+1)+"-"+(cal.get(Calendar.DATE)+1);
	}
	%> 
	<%=calDate()%>

</body>
</html>