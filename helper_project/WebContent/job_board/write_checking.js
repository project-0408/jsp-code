function write_ok(){

	var result = false;
	
	if(document.form.job_title.value.length == 0){
		alert("제목을 써주세요.");
	}
	else if(document.form.job_time_start.value.length == 0){
		alert("시작시간을 써주세요");
	}
	else if(document.form.job_time_end.value.length == 0){
		alert("종료시간을 써주세요");
	}
	else if(document.form.category.value == 4){
		alert("카테고리를 선택해주세요");
	}
	else if(document.form.location_first_name.value.length == 0){
		alert("지역을 선택해주세요");
	}
	else if(document.form.location_second_name.value.length == 0){
		alert("지역을 선택해주세요.");
	}
	else if(document.form.location_detail.value.length == 0){
		alert("상세주소를 써주세요.");
	}
	else if(document.form.job_pay.value == 0){
		alert("금액을 써주세요.");
	}
	else {
		result = true;
	}
	
	console.log("result: "+result);
	return result;
}
