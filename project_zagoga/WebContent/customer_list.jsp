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
    <title>����/�ź�</title>
    <style>
        section table{
            border: 1px solid;
        }
    </style>
</head>
<body>
    <header>
      <h1>���� �ź� ������</h1>
    </header>
      <nav>
      </nav>
<center>
  <section>
        <table border="1">
            <form>
                <tr>
                    <td>�ֹ���ȣ</td>
                    <td>�̸�</td>
                    <td>����ó</td>
                    <td>�ο�</td>
                    <td>üũ��</td>
                    <td>üũ�ƿ�</td>
                    <td>�� �����ϼ�</td>
                    <td>����</td>
                    <td>�������</td>
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
            </form>
        </table>
    </section>
</center>
      <footer>

    </footer>
</body>
</html>