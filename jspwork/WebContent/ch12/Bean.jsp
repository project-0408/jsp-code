<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id = "myBean" class ="Hello.HelloBean" scope = "page"></jsp:useBean>
<hr>
* , 빈 생성 후 저장된 값 출력하기<br><br>
이 름 : <%=myBean.getName() %><br>
나 이  : <%=myBean.getAge() %><br>
<hr>

* , 빈 변경 후 저장된 값 출력하기<br><br>
<% myBean.setName("전수빈");%>
<% myBean.setAge(10);%>
이 름 : <%= myBean.getName()%><br>
나 이 : <%= myBean.getAge()%><br>