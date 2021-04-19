<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! int a = 337;
		public int getlnt(int a){
			return a ;
		}
	%>
	<%  out.println(getlnt(a));%>
</body>
</html>