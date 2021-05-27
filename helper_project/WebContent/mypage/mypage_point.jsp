<%@page import="java.util.Calendar"%>
<%@page import="db.userBeans.UserBean"%>
<%@page import="db.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	String user_id = (String)session.getAttribute("id");
	String user_no = (String)session.getAttribute("no");
	UserDAO DAO = UserDAO.getInstance();
	UserBean user = DAO.getuser(user_id);
%>
<%!
		public String day(){
		Calendar cal =Calendar.getInstance();
		return cal.get(Calendar.YEAR)+"/"+(cal.get(Calendar.MONTH)+1)+"/"+(cal.get(Calendar.DATE));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/mypage_point.css" />
<title>포인트 현황</title>
</head>
<body>
<div class="total">
	 <%@ include file="/header.jsp" %>
    <main>
        <form>
            <div class="box">
                <div class="leftbox">
                    <h3>My page</h3>
					 <button type="button" onclick="location.href='mypage_import.jsp'">회원정보 수정</button>
                    <br>
                    <button type="button" onclick="location.href=mp_write.jsp'">내가 쓴글</button>
                    <br>
                    <button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
                  <!--   <br>
                    <button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
                    <br>
                    <button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button> -->
                </div>
                <div class="mainbox">
                    <h1>마이포인트 | 포인트 적립/ 사용내역</h1>
                    <br>
                    <fieldset class="main_a"> <%=user.getNick() %> 님의 적립 또는 사용한 포인트 내역을 한눈에 확인 가능합니다.</fieldset>
                    <br>
                    <h5>-포인트는 적립/사용한 다음날 최종 확인하실 수 있습니다.</h5>
                    <h5>-현재 포인트 내역은 <%=day() %> 기준입니다</h5>
                    <br>
                    <table  border="2" class="pointt">
                        <tr>
                            <th class="title">일자</th>
                            <th class="title">적립(+)</th>
                            <th class="title">사용(-)</th>
                            <th class="title">거래금액</th>
                            <th class="title">세부내역</th>  
                        </tr>
                        <tr>
                            <td>2007-01-20</td>
                            <td>1,400</td>
                            <td>0</td>
                            <td>3,000</td>
                            <td>후기작성보너스</td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </main>
    <div class="clear"></div>

       <div class="clear"></div>
    <%@ include file="/footer.jsp" %>
    </div>
    
</body>
</html>