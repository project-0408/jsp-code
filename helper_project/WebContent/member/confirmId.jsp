<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8"); %>


<%
	String key = request.getParameter("key");
	String c_value = request.getParameter("value");
	
	UserDAO manager = UserDAO.getInstance();

	int check = manager.registerCheck(key, c_value);    
      
%>
<body>
<%
      if(check == 1)
      {
%>
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr >
      <td height = "39"> <%=c_value %> 이미 사용중입니다.</td>
</tr>
</table>
<form name = "checkForm" method = "post" action = "confirmId.jsp?key=<%=key%>">
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr>
      <td align = "center">
            다른 <%=key.toUpperCase() %>를 사용하세요.<p>
            <input type = "text" size = "10" maxlength = "12" name = "value">
            <input type = "submit" value = "<%=key.toUpperCase() %>중복확인">
      </td>
</tr>
</table>
</form>
<%
      }
      else
      {
%>
<table width = "270" border = "0" cellspacing = "0" cellpadding = "5">
<tr>
      <td align = "center"><p>
            입력하신 <%=c_value %>는 사용하실 수 있는 <%=key.toUpperCase() %>입니다.
            <input type = "button" value = "닫기" onclick = "window.close()">
      </td>
</tr>
</table>
<%
      }
%>
</body>
</html>
<script language = "javascript">
