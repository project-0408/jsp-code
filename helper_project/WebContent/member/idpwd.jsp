<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/idpwd.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
 <body>
    <div class="total">
   <%@ include file="/header.jsp" %>
      <form action="findIdAction.jsp" method="post">
        <h1 align="center">ID PW 찾기</h1>
        <div class="id_section">
			<h3>아이디 찾기</h3>
			<table>
				<tr>
					<td>이름을 입력하세요.</td>
					<td><input type = "text" name = "name"></td>
				</tr>
				<tr>
					<td>이메일을 입력하세요.</td>
					<td><input type = "text" name = "email"></td>
				</tr>
			</table>
            <div class="button">
				<button type="submit">찾기</button>
			</div>
        </div>
        </form>
        <form action="findPwAction.jsp" method="post">
        <div class="pw_section">		
					<h3>비밀번호 찾기</h3>
			<table>
				<tr>
					<td>가입한 아이디를 입력하세요.</td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td>가입한 이메일을 입력하세요.</td>
					<td><input type = "text" name = "email"></td>
				</tr>
			</table>
            <div class="button">
				<button type="submit">찾기</button>
			</div>
        </div>
      </form>
      
      <div class ="space"></div>
     <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>