function check_ok(){
	
	if(document.reg_frm.mem_uid.value.length == 0){
		alert("아이디를 써주세요.");
		reg_frm.mem_uid.focus();
		return;
	}
	else if(document.reg_frm.mem_uid.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다");
		reg_frm.mem_uid.focus();
		return;	
	}
	else if(document.reg_frm.mem_pw.value.length == 0){
		alert("패스워드는 반드시 입력해야합니다.");
		reg_frm.mem_pw.focus();
		return;
	}
	else if(document.reg_frm.mem_pw.value != document.reg_frm.mem_pw2.value){
		alert("패스워드가 일치하지 않습니다.");
		reg_frm.mem_pw2.focus();
		return;
	}
	else if(document.reg_frm.mem_name.value.length == 0){
		alert("이름을 써주세요.");
		reg_frm.mem_name.focus();
		return;

	}
	else if(document.reg_frm.mem_email.value.length == 0){
		alert("Email을 써주세요.");
		reg_frm.mem_email.focus();
		return;
	}
}
