<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
	String order_id="",customer_name="",tel="", etc="";
	int customer_number =0,total_stay = 0, rate = 0;
	
	Timestamp check_in =null, check_out=null;
 %>
<html lang="en">
<head>
    <meta charset="euc-kr">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    	section table{
    		border:1px solid;
    	}
    </style>
</head>
<body>
    <header>
    </header>
      <nav>
      </nav>
   <section>
       <center>
        <table>
            <form>   
                <tr>
                    <td width="130">�ֹ���ȣ: </td>
                    <td><%=order_id%></td>
                </tr>
                <tr>
                    <td width="130">�ۼ���: </td>
                    <td><%= customer_name %></td>
                    <td width="130">����ó: </td>
                    <td><%= tel %></td>
                </tr>
                <tr>
                   <td width="130">�ο�: </td>
                   <td>
                    	<%=customer_number %>
                   </td>
                   <td width="130">üũ��: </td>
                   <td><%=check_in %></td>
                </tr>
                <tr>
                    <td width="130">üũ �ƿ�: </td>
                    <td>
                    	<%=check_out  %>
                    </td>
                    <td width="130">�� ������: </td>
                    <td>�� / ��</td>
                </tr>
                <tr>
                    <td width="130">����: </td>
                    <td><%=rate %></td>
                </tr>
                <tr>
                    <td width="130">��Ÿ ����: </td>
   		            <td><%= etc %></td>
                </tr>
                <tr>
                    <td >
                        <input type="submit" value="�����ϱ�" >
                        <input type="button" value="���"  onclick="location.href=''">
                    </td>
                </tr>
            </form>
        </table>
        </center>
    </section>
      <footer>
     
    </footer>
</body>
</html>