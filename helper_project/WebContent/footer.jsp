<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./css/footer.css">
  <footer class="footer">
    <div class="f_img"><img src="<%=request.getContextPath() %>/images/footer.png" id="f_img"></div>
    <div>
      Green.co <br>
      Addr. 부산시 가나다동 가나다라구 2로 1234 <br>
      010 - 123 -1234 <br>
      COPYRIGHT 2019. TAMO. ALL RIGHT RESERVED.
      <td style="text-align: right;">
		<a href="#" onclick="window.open(
			'admin/admin_login.jsp',
			'',
			'width=500,height=300,top=200,left=300')">
			관리자
		</a>
	 </td>
    </div>
  </footer>
</html>