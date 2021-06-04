<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/administration_list.css" />
</head>
<body>
	<%
	Cookie cookie = new Cookie("no","1");
	cookie.setMaxAge(60*60*24);
	response.addCookie(cookie);
	%>
	<div id="container">
		<div id="input-form">
			<h2>사업 등록 현황</h2>
			사업자번호 :<input type="text" id="keyword">
		</div>
		<table id="user-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>사업자 번호</th>
					<th>등록 일자</th>
					<th>승인 여부</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>123-456-78910</td>
					<td>홍길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button onclick="location.href='administration_reading.jsp'">상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>223-456-78910</td>
					<td>김길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>323-456-78910</td>
					<td>이길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>423-456-78910</td>
					<td>사길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>523-456-78910</td>
					<td>오길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>623-456-78910</td>
					<td>홍길동</td>
					<td>2021-06-02</td>
					<td>거절</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
				<tr>
					<td>723-456-78910</td>
					<td>홍길동</td>
					<td>2021-06-02</td>
					<td>승인</td>
					<td><button>상세 내용 확인</button></td>
				</tr>
			</tbody>
		</table>
		<script>
			$("#keyword").keyup(function() {
								var k = $(this).val();
								$("#user-table > tbody > tr").hide();
								var temp = $("#user-table > tbody > tr > td:nth-child(1):contains('"+ k + "')");
								$(temp).parent().show();
							})
		</script>
	</div>
</body>
</html>