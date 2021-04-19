<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ����</title>
</head>
<body>
	<%!
		Connection con = null;
		DataSource ds = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	%>
	<%
	try{
		Context ctx = new InitialContext();
		ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		con = ds.getConnection();
		System.out.println("DBCP ���� ����");
		
		StringBuffer selectQuery = new StringBuffer();
		selectQuery.append("select name, class, tel from member2 where id=?");
		String id = request.getParameter("id");
		ps = con.prepareStatement(selectQuery.toString());
		ps.setString(1,id);
		rs = ps.executeQuery();
		
		if(rs.next()){
			%>
			<form action="updateProcess.jsp" method="post">
				���̵� : <input type = "text" name = "id" readonly value="<%=id%>"><br>
				�� ��  : <input type = "text" name = "name" value="<%=rs.getString("name")%>"><br>
				ȸ����� : <input type = "text" name = "mclass" value="<%=rs.getString("class")%>"><br>
				��ȭ��ȣ : <input type = "text" name = "tel" value="<%=rs.getString("tel")%>"><br>
				<input type = "submit" value="����">
				<a href = "viewMember.jsp">��Ϻ���</a>
			</form>
			<% 
		}
		else{
			%>
			<font color = "red">���̵� ����</font>
			<a href = "viewMember.jsp">��Ϻ���</a>
			<%		
			}
	}
	catch(SQLException se){
		se.printStackTrace();
	}
	catch(NamingException ne){
		ne.printStackTrace();
	}
	finally{
		try{
			if(con!=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
	
</body>
</html>