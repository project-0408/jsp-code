<%@page import="db.UserDAO"%>
<%@page import="db.userBeans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/mypage_import.css" />
<%
String user_id = (String)session.getAttribute("id");
String user_no = (String)session.getAttribute("no");
UserDAO uDAO = UserDAO.getInstance();
UserBean user = uDAO.getuser(user_id);
%>
<title>마이페이지</title>

<script>
// 아이디 중복 여부를 판단
function openConfirmid(inputKey, inputValue)
{
	console.log(inputKey);
	console.log(inputValue);
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
</script>

</head>
<body>
	<div class="total">
		 <%@ include file="/header.jsp" %>
		<form name="form" method="POST" action="<%=p_helper_path%>/mypage/member_modify_ok.jsp?no=<%=user_no%>">
			<div class="section">
				<div class="leftbox">
					<h3>My page</h3>
					<button type="button" onclick="location.href='mypage_import.jsp'">회원정보
						수정</button>
					<br>
					<button type="button" onclick="location.href='mp_write.jsp'">내가
						쓴글</button>
					<br>
					<button type="button" onclick="location.href='mypage_apply.jsp'">지원현황</button>
					<br>
					<button type="button" onclick="location.href='mypage_point.jsp'">마이포인트조회</button>
					<br>
					<button type="button" onclick="location.href='mypageLike.jsp'">스크랩</button>
				</div>
				<div class="mainbox">
					<h1>회원 정보 변경</h1>
					<br> <br> <br>
					<table>
						<tr>
							<td class="title">아이디</td>
							<td><input type="text" style="width: auto"  value="<%=user.getId() %>" disabled></td>
							<td class="title">이름</td>
							<td><input type="text" style="width: auto" value = "<%=user.getName() %>" disabled></td>
						</tr>
						<tr>
							<td class="title">비밀번호</td>
							<td><input type="password" style="width: auto" name="pw" value="<%=user.getPw()%>"></td>
							<td class="title">비밀번호 확인</td>
							<td><input type="password" style="width: auto" value="<%=user.getPw()%>"></td>
						</tr>
						<tr>
							<td>닉네임</td>
							<td><input type="text"name="nick" value = "<%=user.getNick()%>"></td>
							<td><input type="button" value="중복확인" onclick = "openConfirmid(this.form.nick.name, this.form.nick.value)"></td>
						</tr>
						<tr>
							<td class="title">생년월일</td>
							<td><input type="number" style="width: auto" name="birth_yy" value = "<%=user.getBirth_yy() %>"/>년
							<td><input type="number" style="width: auto" name="birth_mm" value = "<%=user.getBirth_mm() %>" min="1" max="12" />월
							<td><input type="number" style="width: auto" name="birth_dd" value = "<%=user.getBirth_dd() %>"/ min="1" max="31" />일
							<!-- ★ leni ★ 추후 select box 또는 datepicker 로 수정하는게 좋음  -->
							</td>
						</tr>
						<tr>
							<td class="title">메일주소</td>
							<td colspan="3" text-aling="end"><input type="email" name="email" value = "<%=user.getEmail() %>" /></td>
						</tr>
						<tr>
							<script type="text/javascript" src="<%=p_helper_path %>/util/juso3.js" ></script>
							<td class="title">도로명 주소</td>
							<td colspan="2"><input  type="text"  style="width:auto;" id="location_addr" name="location_addr" value="<%=user.getLocation_addr() %>" readonly/></td>
							<td><input type="button" onClick="goPopup();" value="주소 찾기"/></td>
						</tr>
						<tr>
							<td class="title">상세주소 </td>
							<td>
							<input type="text"  style="width:auto;" id="location_detail" value="<%=user.getLocation_detail() %>"  name="location_detail" />
							<input type="hidden" name="location_first_name" value="<%=user.getLocation_first_name() %>" />
							<input type="hidden" name="location_second_name" value="<%=user.getLocation_second_name() %>" />
							</td>
						</tr>
					</table>
					<br>
					<br>
					<div class="button">
						<button type="submit" onclick = "update()">수정 완료</button>
						 <script>
						 function update(){
							 /* ★ leni ★ 현재 비밀번호 input을 만들고 update()에서 비교해야 할 듯, 프롬프트로 하면 비밀번호가 노출 됨 */ 
     						 if (user_pw != '<%=user.getPw()%>') {
	        					alert("비밀 번호가 다릅니다.");
	        					return false;
     						}
     						 
     						return true;
						 }
   						</script>
						<button type="button" onclick="member_delete()">회원 탈퇴</button>
						<script>
							function member_delete() {
								var result = prompt("정말로 탈퇴 하시겠습니까??\n작성하셨던 모든 글들이 삭제되며, 되돌릴 수 없습니다.\n😭😭😭😭😭\n\n탈퇴를 원하시면 아래 회원님의 아이디를 적어주세요.");
								console.log(result);
								if (result == '<%=user_id%>') {
									document.location.href="<%=p_helper_path%>/mypage/member_delete_ok.jsp"
								} else {
									alert("취소 되었습니다.");
								}
							}
						</script>
						<span><button type="reset">다시쓰기</button></span>
					</div>
				</div>
			</div>
		</form>
		<div class="clear"></div>
		 <%@ include file="/footer.jsp" %>
	</div>
</body>
</html>