<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String order_id="",customer_name="",tel="";
	int customer_number =0,total_stay = 0, rate = 0;
	
	Timestamp check_in =null, check_out=null;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
%>
<html lang="en">
<head>
    <meta charset="euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/costomer_list.css" />
    <title>����/�ź�</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
  	<div id = "mainbox">
      <h1>���� �ź� ������</h1>
  <section>
        <table>
                <tr>
                    <th>�ֹ���ȣ</th>
                    <th>�̸�</th>
                    <th>����ó</th>
                    <th>�ο�</th>
                    <th>üũ��</th>
                    <th>üũ�ƿ�</th>
                    <th>�� �����ϼ�</th>
                    <th>����</th>
                    <th>�������</th>
                </tr>
 <%
				for(int i=0 ; i<10 ; i++){ 
					//DB�� �ִ� list�� �޾Ƽ�  ���� ����
%> 
				<tr>
					<td>
					<%=order_id %>
					</td>
					<td>
					<%=customer_name %>
					</td>
					<td>
					<%=tel %>
					</td>
					<td>
					<%=customer_number %>
					</td>
					<td>
					<%=check_in %>
					</td>
					<td>
					<%=check_out %>
					</td>
					<td>
					<%=total_stay %>
					</td>
					<td>
					<%=rate %>
					</td>
					<td>
						<input type="button" value="����"> &nbsp; / &nbsp;
						<input type="button" value="�ź�">
					</td>
				</tr>
	<%
		}
	%>
        </table>
    </section>
  	</div>
    	<%@ include file="/footer.jsp" %>
</body>
</html>