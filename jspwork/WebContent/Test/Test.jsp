<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <%!
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
    String selectQuery = "SELECT * FROM EMP";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<table width="1000" border = "1">
	<tr>
		<td>�����ȣ</td>
		<td>�����</td>
		<td>���� </td>
		<td>�����ȣ</td>
		<td>�Ի�����</td>
		<td>�޿�</td>
		<td>Ŀ�̼�</td>
		<td>�μ���ȣ</td>
	</tr>
	<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, user, password);
		stmt = con.createStatement();
		rs = stmt.executeQuery(selectQuery);
		
		while(rs.next()){
			%> 
			<tr>
			<td><%=rs.getString("empno") %></td>
			<td><%=rs.getString("ename") %></td>
			<td><%=rs.getString("job")%></td>
			<td><%=rs.getString("mgr") %></td>
			<td><%=rs.getString("hiredate") %></td>
			<td><%=rs.getString("sal") %></td>
			<td><%=rs.getString("comm") %></td>
			<td><%=rs.getString("deptno") %></td>
			</tr>
			<%
		}
	} catch (SQLException ex) {
		out.print("SQLException: " + ex.getMessage());
	}
	%>
</table>
</body>
</html>