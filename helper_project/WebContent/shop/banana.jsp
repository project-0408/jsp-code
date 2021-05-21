<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- 이미지크기 387*387-->
<link rel="stylesheet" href="./css/shop-in.css">
</head>
<body>
	<div class="total">
			 <%@ include file="shop_header.jsp" %>
<div class = "space"></div>
		<div class="product_view">
			<h2>[빙그레]바나나맛 우유</h2>
			<table>
				<colgroup>
					<col style="width: 173px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th>판매포인트</th>
						<td class="price">1,260</td>
					</tr>
					<tr>
						<th>제조사/공급사</th>
						<td>빙그레</td>
					</tr>
					<tr>
						<th>구매수량</th>
						<td>
							<div class="length">
								<input type="number" min="1" value="1"> <a href="#a">증가</a>
								<a href="#a">감소</a>
							</div>
						</td>
					</tr>
					<tr>
						<th>사용가능포인트</th>
						<td>0포인트</td>
					</tr>
					<tr>
						<th>옵션선택</th>
						<td><select>
								<option>기본(+0)</option>
						</select></td>
					</tr>
					<tr>
						<th>배송비</th>
						<td>무료배송</td>
					</tr>
					<tr>
						<th>결제포인트</th>
						<td class="total"><b>1,260</b></td>
					</tr>
				</tbody>
			</table>
			<div class="img">
				<img src="../images/bana.jpg" alt="">
				<ul>
					<li class="on"><a href="#a"><img src="../images/bana.jpg"
							alt=""></a></li>
				</ul>
			</div>
			<div class="btns">
				<a href="#a" class="btn1">장바구니</a> <a href="#a" class="btn2">구매하기</a>
				<a href="shop.jsp" class="btn3">목록으로</a>
			</div>
		</div>
		<div class="clear"></div>
	<footer>
            <div id="footer_box">
                <div id="footer_logo">
                    <img src="../images/footer.png" width="100" height="100">
                </div>
                <div id="address">
                    <ul>
                        <li>Green.co</li>
                        <li>Addr. 부산시 가나다동 가나다라구 2로 1234</li>
                        <li>010 - 123 - 1234</li>
                        <li>© COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.</li>
                    </ul>
                </div>
            </div>
    </footer>
	</div>
</body>
</html>