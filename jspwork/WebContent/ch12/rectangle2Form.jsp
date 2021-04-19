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
	가로 <%=rectangle.getW() %> <br>
	세로 <%=rectangle.getH() %> <br>
	
	면적 <%=rectangle.process() %>

</body>
</html>