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
    String selectQuery = "SELECT * FROM MEMBER2";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border = "1">
	<tr>
		<td>���̵�</td>
		<td>�� ��</td>
		<td>��� </td>
		<td>��ȭ��ȣ</td>
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
				<td>
				<a href='updateMember.jsp?id=<%=rs.getString("id")%>'>
				<%=rs.getString("id")%>
				</a>
				</td>
			<td><%=rs.getString("name") %></td>
			<td><% int n_class = rs.getInt("class"); 
				if(n_class==1){
					out.print("�Ϲ�ȸ��");
				}else{
					out.print("������");
				}
			%></td>
			<td><%=rs.getString("tel") %></td>
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