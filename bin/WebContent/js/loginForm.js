/**
 * 로그인 형식
 */
function open_close_1(){
login_form_close();
join_form();
}
function login_form(){//로그인창 생성
	$("#login_form").show();
	$(".dim").show();

}
function login_form_close() {
	$("#login_form").hide();
	$(".dim").hide();
	
}

function login_proc(email, password){//로그인 진행
	
}

function google_login(){//구글 로그인
	
}