<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="java.net.InetAddress"%>
<%@page import="magic.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="bd" class="magic.BoardBean"/>
 <jsp:setProperty property = "*" name = "bd"/>
 
	<%
	SmartUpload upload = new SmartUpload();
	upload.initialize(pageContext);
	upload.upload();
	File file = upload.getFiles().getFile(0);
	
	String fname = null; 
	int fsize = 0;
	
	if(!file.isMissing()){
		fname = file.getFileName();
		file.saveAs("/upload/"+file.getFileName());
		fsize = file.getSize();
	}
	
	InetAddress address = InetAddress.getLocalHost();
	String ip = address.getHostAddress();
	
	bd.setB_ip(ip);
	bd.setB_fname(fname);
	bd.setB_fsize(fsize);
	bd.setName(upload.getRequest().getParameter("name"));
	bd.setTitle(upload.getRequest().getParameter("title"));
	bd.setEmail(upload.getRequest().getParameter("email"));
	bd.setContent(upload.getRequest().getParameter("content"));
	bd.setB_pwd(upload.getRequest().getParameter("b_pwd"));
	
	BoardDBBean B_manager = BoardDBBean.getInstance();
	
	int re = B_manager.insertBoard(bd);
	
	if(re == 1){
		response.sendRedirect("list.jsp");
		%>
	<script>
		 alert("게시글이 작성 되었습니다.");
	</script>
		<% 
	}
	else{
		response.sendRedirect("write.jsp");
	}
	%>
</body>
</html>