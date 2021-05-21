<%@page import="db.reviewBeans.ReviewPostBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.ReviewBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="EUC-KR" />
    <link rel="stylesheet" href="../css/review_writer.css" type="text/css" />
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="utf-8"></script>
  </head>
  <body>
    <div class="total">
        <%
        	ReviewBoardDAO rbDAO = ReviewBoardDAO.getInstance();
        	
        %>
    <%@ include file="/header.jsp" %>
      <form action="" method="POST">
        <h1>후기작성 수정</h1>
        <div class="section">
          <ul>
            <div class="title">
              <h3>제목 &nbsp;&nbsp;&nbsp;<input type="text" name="title" value = "작성한 제목"/></h3>
            </div>
          </ul>
          <ul>
            <div class="content">
              <h4>후기 작성</h4>
              <textarea id="detail"
                 style="overflow: auto; height: 400px"
                cols="70"
                rows="auto">작성한 내용</textarea>
            </div>
          </ul>
          <div class="botton">
            <button type="submit" onclick="review_writer_fix_ok.jsp">글 수정</button>
            <button type="reset">다시쓰기</button>
            <span><button type="button" value = "뒤로가기" onclick="location.href='mypage_write.jsp'">뒤로가기</button></span>
          </div>
        </div>
      </form>
      <div class ="clear"></div>
       <%@ include file="/footer.jsp" %>
    </div>
  </body>
</html>
<script type="text/javascript" src="resources/js/notice-write.js"></script>

