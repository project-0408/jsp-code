<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
    <link rel="stylesheet" type="text/css" href="../css/login.css" />
    <script type="text/javascript" src="checking.js" charset="utf-8"></script>
    <title>Document</title>
</head>
<body>
        <div class="total">
           <%@ include file="/header.jsp" %>
            <div class = "space"></div>
      <form name = "login" action="loginAction.jsp" method="post" onsubmit="check_login()">
			<div class="loginForm">
				<h1>Login</h1>
				<div class="idForm">
					<input type="text" class="id" placeholder="ID" name = "id">
				</div>
				<div class="passForm">
					<input type="password" class="pw" placeholder="PW" name = "pw">
				</div>
				<button type="submit" class="btn">로그인</button>
				<button type="button" class="btn" onclick="location.href='register.jsp'">계정이 없으신가요? 가입하기</button>

				<div class="bottomText">
					<a href="idpwd.jsp">비밀번호를 잊으셨나요?</a>
				</div>
			</div>
		</form>
            <div class="clear"></div>
             <%@ include file="/footer.jsp" %>
        </div>
        	
    </body>
</html>
