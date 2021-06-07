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
	<%@ include file="/header.jsp" %>
	<div id="container">
		<div id="input-form">
		<hr>
			<h2>��� ��� ��Ȳ</h2>
			<hr>
			<p></p>
		����ڹ�ȣ :<input type="text" id="keyword">
		</div>
		<table id="user-table">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�̸�</th>
					<th>����� ��ȣ</th>
					<th>��� ����</th>
					<th>���� ����</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>123-456-78910</td>
					<td>ȫ�浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button onclick="location.href='administration_reading.jsp'">�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>223-456-78910</td>
					<td>��浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>323-456-78910</td>
					<td>�̱浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>423-456-78910</td>
					<td>��浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>523-456-78910</td>
					<td>���浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>623-456-78910</td>
					<td>ȫ�浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
				</tr>
				<tr>
					<td>723-456-78910</td>
					<td>ȫ�浿</td>
					<td>2021-06-02</td>
					<td>����</td>
					<td><button>�� ���� Ȯ��</button></td>
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
		<%@ include file="/footer.jsp" %>
</body>
</html>