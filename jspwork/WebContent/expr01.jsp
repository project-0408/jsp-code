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
	String str = "�ȳ��ϼ���";
	int a = 5; 
	int b = -5;
	
	public int abs (int n){
		if ( n < 0 ){
			n=-n;
		}
		return n;
	}
%>
<%= str %>
<br>
<%= a %>�� ���밪�� => <%= abs(a) %>
<br>
<%= b %>�� ���밪�� => <%= abs(b) %>

</body>
</html>