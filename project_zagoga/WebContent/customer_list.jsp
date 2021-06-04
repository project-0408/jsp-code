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
    <title>승인/거부</title>
    <style>
        section table{
            border: 1px solid;
        }
    </style>
</head>
<body>
    <header>
      <h1>승인 거부 페이지</h1>
    </header>
      <nav>
      </nav>
<center>
  <section>
        <table border="1">
            <form>
                <tr>
                    <td>주문번호</td>
                    <td>이름</td>
                    <td>연락처</td>
                    <td>인원</td>
                    <td>체크인</td>
                    <td>체크아웃</td>
                    <td>총 숙박일수</td>
                    <td>가격</td>
                    <td>진행상태</td>
                </tr>
 <%
				for(int i=0 ; i<10 ; i++){ 
					//DB에 있는 list를 받아서  값들 나열
				
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
						<input type="button" value="승인"> &nbsp; / &nbsp;
						<input type="button" value="거부">
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