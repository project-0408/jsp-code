<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�α���</title>
    <link href="css/login.css" media="all" rel="Stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/header.jsp" %>
	<form action="#" method="POST" onsubmit="return blankCheck();">
    <div id = "mainbox">
        <table aria-describedby="loginTable">
            <th id="loginTable"></th>
                <tr><td class="inputHead">���̵�</td></tr>
                <tr><td colspan="2" class="inputID" ><input type="text" id="userID" name="userID" placeholder="please enter your id"></td></tr>
                <tr><td class="inputHead">��й�ȣ</td></tr>
                <tr>
                    <td class="inputPW"><input type="password" id="userPW" name="userPW" placeholder="please enter your password"></td>
                    <td class="inputPWShow"><input type="image" id="userPWShow" onclick="pwShowToggle(); return false;" src="img/visibility.png" alt="show password"/></td>
                </tr>
                <tr><td colspan="2"><input class="inputButton" type="submit" value="�α���"></td></tr>
                <tr>
                    <td class="inputFinder"><a href="#">���̵�/��й�ȣ ã��</a></td>
                    <td class="inputRegister"><a href="#">ȸ������</a></td>
                </tr>
        </table>
    </div>
    </form>
    <%@ include file="/footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="login.js" type="text/javascript"></script>
    <script src="pwShowToggle.js" type="text/javascript"></script>
</body>
</html>