<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String order_id="",customer_name="",tel="";
	int customer_number =0,total_stay = 0, rate = 0;
	
	Timestamp check_in =null, check_out=null;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="resources/css/@@##@#@아직없음.css" />
    <title>예약고객리스트(host용)</title>
</head>
<body>
	<%@ include file="../header.jsp" %>
  	<div id = "mainbox">
      <h1>승인 거부 페이지</h1>
  <section>
        <table>
                <tr>
                    <th>주문번호</th>
                    <th>이름</th>
                    <th>연락처</th>
                    <th>인원</th>
                    <th>체크인</th>
                    <th>체크아웃</th>
                    <th>총 숙박일수</th>
                    <th>가격</th>
                    <th>진행상태</th>
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
        </table>
    </section>
  	</div>
    	<%@ include file="../footer.jsp" %>
</body>
</html>