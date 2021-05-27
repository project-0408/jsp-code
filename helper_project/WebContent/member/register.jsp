<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
 <script type="text/javascript" src="checking.js" charset="UTF-8"></script>
<link rel="stylesheet" href="../css/register1.css" />
<title>document</title>

<script>
// 아이디 중복 여부를 판단
function openConfirmid(inputKey, inputValue)
{

      // 아이디를 입력했는지 검사
      if(inputValue == "")
      {
            alert(inputKey+"를 입력하세요");
            return;
      }

      // url과 사용자 입력 아이디를 조합합니다.
      url = "confirmId.jsp?key="+inputKey+"&value="+inputValue;
      console.log(url);

      // 새로운 윈도우를 엽니다.
      open(url, "confirm",
            "toolbar = no, location = no, status = no," +
            "menubar = no, scrollbars = no, resizable = no," +
            "width = 300, height = 200");
}

function openConfirmCallBack(key, value){
	if(key == "id"){
		document.form.id.value = value;
	}
	else if (key == "nick"){
		document.form.nick.value = value;
	}
	
}
</script>
</head>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<center>
			<form action="register_ok.jsp" class="sign-up-form" id="form" name="form" method="post" onsubmit="return member_ok()" >
				<div class="main">
					<div class="title">
						<h1>회원가입</h1>
					</div>
					<BR> <BR>
				</div>
				<div class="input-field">
					<table class="table ">
						<tr>
							<th>아이디</th>
							<td><input type="text" placeholder="아이디" name="id"></td>
							<td><input type="button" value="중복확인" onclick ="openConfirmid(this.form.id.name, this.form.id.value)"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" placeholder="이름" name="name"></td>
						</tr>
						<tr>
							<th>닉네임</th>
							<td><input type="text" placeholder="닉네임" name="nick"></td>
							<td><input type="button" value="중복확인" onclick = "openConfirmid(this.form.nick.name, this.form.nick.value)"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="password" placeholder="패스워드" name="pw"></td>
						</tr>

						<tr>
							<th>패스워드확인</th>
							<td><input type="password" placeholder="패스워드 확인"
								name="pass2"></td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
							<input type="radio" name="gender" value=0>남 
							<input type="radio" name="gender" value=1>여
							<input type="radio" name="gender" value=2>선택 안함
							</td>
						</tr>
						<tr>
							<th>생일</th>
							<td><input type="text" name="birth_yy" maxlength="4"
								placeholder="년(4자)" size="6"> <select name="birth_mm">
									<option value="">월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select> <input type="text" name="birth_dd" maxlength="2" placeholder="일"
								size="4"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" placeholder="이메일" name="email"></td>
						</tr>

						<!-- 주소 입력 넣을 부분 -->
						<tr>
							<script type="text/javascript" src="<%=p_helper_path %>/util/juso2.js" ></script>
							<td class="title">도로명 주소</td>
							<td colspan="2"><input  type="text"  style="width:auto;" id="location_addr" name="location_addr" readonly/></td>
							<td><input type="button" onClick="goPopup();" value="주소 찾기"/></td>
						</tr>
						<tr>
							<td class="title">상세주소 </td>
							<td>
							<input type="text"  style="width:auto;" id="location_detail"   name="location_detail" />
							<input type="hidden" name="location_first_name" />
							<input type="hidden" name="location_second_name"  />
							</td>
						</tr>
						<tr>
							<th><input type="submit" class="btn" value="신청하기" name="confirm"></th>
							<td><input type="button" class="btn" value="뒤로가기"
								onclick="location.href='../member/login.jsp'"></td>
						</tr>
					</table>
				</div>
			</form>
			</certer>
	
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>