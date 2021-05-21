<%@page import="db.jobBoardBeans.JobPostBean"%>
<%@page import="db.JobPostDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String job_post_no = request.getParameter("no");
JobPostDAO jpDAO = JobPostDAO.getInstance();
JobPostBean jp = jpDAO.getPost(job_post_no);
%>

<!-- Date picker를 위한 import -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<!-- Time picker를 위한 import -->
<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	
<script>
$(function() {
	
	//시작 일.
	$('#timeDay').datepicker({
		showOn : "focus", // 달력을 표시할 타이밍 (both: focus or button)
		dateFormat : "yy-mm-dd", // 날짜의 형식
		showMonthAfterYear:true, // 월- 년 순서가아닌 년도 - 월 순서
        changeYear: true, //option값 년 선택 가능
		changeMonth : true, // 월을 이동하기 위한 선택상자 표시여부
		minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //달력의 월 부분 Tooltip
        dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
	}); 
	//오늘 날짜를 기본으로 셋팅 (timeDay 설정 밑에 와야 동작)
	$('#timeDay').datepicker('setDate', '<%=jp.getJob_day()%>');

	// 시작 시간.
	$('#timeStart').timepicker({
		timeFormat: 'HH:mm',
	    interval: 30,
	    minTime: '00:00',
	    maxTime: '23:30',
	    startTime: '04:00',
	    dynamic: true,
	    dropdown: true,
	    scrollbar: true,
	    defaultTime: '<%=jp.getJob_time_start()%>'
	});
	
	// 종료 시간.
	$('#timeEnd').timepicker({
		timeFormat: 'HH:mm',
	    interval: 30,
	    minTime: '00:00',
	    maxTime: '23:30',
	    startTime: '04:00',
	    dynamic: true,
	    dropdown: true,
	    scrollbar: true,
	    defaultTime: '<%=jp.getJob_time_end()%>'
	});

});


</script>


<input type="text" name="job_day" id="timeDay" placeholder="날짜를 선택하세요">
<input type="text" name="job_time_start" id="timeStart" placeholder="시작 시간을 선택하세요">
<input type="text" name="job_time_end" id="timeEnd" placeholder="종료 시간을 선택하세요">