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
    <title>����� ȸ������</title>
    <link href="css/regist_business.css" media="all" rel="Stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/header.jsp" %>
	<form action="#" method="POST" onsubmit="return blankCheck();">
        <div class="inputHead">
            <h2>����� ����</h2>
            <input type="text" class="businessNum" maxlength="3" pattern="[0-9]+"> - <input type="text" class="businessNum" maxlength="2" pattern="[0-9]+"> - <input type="text" class="businessNum" maxlength="5" pattern="[0-9]+">
            <button type="button" id="checkBusinessNumberBtn" onclick="checkBusinessNumber();">�����ϱ�</button>
        </div>
        <h2>�����Է�</h2>
        <table aria-describedby="registBusinessTable">
            <th id="registBusinessTable"></th>
            <tr><td class="input"><input type="text" id="brand" name="brand" placeholder="��ȣ��" disabled></td></tr>
            <tr><td class="input"><input type="text" id="owner" name="owner" placeholder="��ǥ�ڸ�" disabled></td></tr>
            <tr><td class="input"><input type="text" id="userID" name="userID" placeholder="���̵�" disabled></td></tr>
            <tr>
                <td class="inputPW"><input type="password" id="userPW" name="userPW" placeholder="��й�ȣ" disabled></td>
                <td class="inputPWShow"><input type="image" id="userPWShow" onclick="pwShowToggle(); return false;" src="img/visibility.png" alt="show password" disabled/></td>
            </tr>
            <tr><td class="inputPW"><input type="password" id="userPWCheck" name="userPWCheck" placeholder="��й�ȣ ���Է�" disabled></td></tr>
            <tr>
                <td>
                    <select class="phoneNum" disabled>
                        <option>����</option>
                        <option>010</option>
                    </select>
                    - <input type="text" class="phoneNum" maxlength="4" disabled>
                    - <input type="text" class="phoneNum" maxlength="4" disabled>
                </td>
            </tr>
            <tr>
                <td >
                    <input type="text" id="emailID" name="emailID" placeholder="�̸���" disabled>
                    @ <select id="emailAddr" name="emailAddr" disabled>
                        <option>����</option>
                        <option>naver.com</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="inputButtonLayout">
                    <input class="inputButton" id="registerButton" type="submit" value="ȸ������" disabled>
                    <input class="inputButton" type="button" value="���">
                </td>
            </tr>
        </table>
    </form>
<%@ include file="/footer.jsp" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="regist_business.js" type="text/javascript"></script>
    <script src="pwShowToggle.js" type="text/javascript"></script>
</body>
</html>