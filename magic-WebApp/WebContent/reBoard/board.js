function check_ok(){
	
	if(document.bd_frm.name.value.length == 0){
		alert("이름을 입력하세요.");
		bd_frm.name.focus();
		return;
	}
	else if(document.bd_frm.email.value.length == 0){
		alert("메일을 입력하세요.");
		bd_frm.email.focus();
		return;	
	}
	else if(document.bd_frm.b_pwd.value.length == 0){
		alert("암호를 입력하세요.");
		bd_frm.b_pwd.focus();
		return;	
	}
	else if(document.bd_frm.title.value.length == 0){
		alert("제목을 입력하세요.");
		bd_frm.title.focus();
		return;
	}
	else if(document.bd_frm.content.value.length == 0){
		alert("내용을 입력하세요.");
		bd_frm.content.focus();
	}
	document.bd_frm.submit();
}

function delete_ok(){
	
	if(document.show.b_pwd.value != document.bd_frm.b_pwd.value){
		alert("암호가 틀립니다.");
		show.b_pwd.focus();
	}
}