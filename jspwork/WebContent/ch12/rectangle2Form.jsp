<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <jsp:useBean id = "rectangle" class = "area.Rectangle2"></jsp:useBean>
    <jsp:setProperty property = "*" name = "rectangle"></jsp:setProperty>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� <%=rectangle.getW() %> <br>
	���� <%=rectangle.getH() %> <br>
	
	���� <%=rectangle.process() %>

</body>
</html>