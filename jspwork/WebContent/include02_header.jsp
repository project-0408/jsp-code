<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<%!
 		int pageCount = 0;
		void addCount(){
			pageCount++;
		}
	%>
	<%
		addCount();
	%>
	<p>이 사이트의 방문은 <%= pageCount %></p>