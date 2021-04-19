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
	String str = "안녕하세요!";
	int a=5 , b= -5;
	
	public int abs(int n){
		if(n<0){
			n=-n;
		}
		return n;
	}
	%>
	
	<%
	out.println(str + "<br>");
	out.println(a + "의 절대값은 => " + abs(a) + " <br>" );
	out.println(b + "의 절대값은 => " + abs(b) + " <br>" );
	%>
</body>
</html>