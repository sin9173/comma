/**
 * 
 */
//function St_patternChk(){
//	var phone_pattern = /^(?:(010-?\d{4})|(01[1|6|7|8|9]-?\d{3,4}))-?\d{4}$/;
//	var email_pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
//
//	var st_phone=$("#st_p_number");
//	var st_email=$("#st_email");
//	
//	var st_phoneCheck = phone_pattern.test(phone.val());//.test 문장안에 찾으려는 문자가 들어잇으면  true 를 반환
//	var st_emailCheck = email_pattern.test(email.val());
//	
//	if(st_phoneCheck==false){
//		alert("휴대폰을 확인 해주세요.")
//		phone.focus();
//	}else if(st_emailCheck==false){
//		alert("이메일을 확인 해주세요.")
//		email.focus();
//	}
//
//}

function st_phoneCheck(me){
	
	var pattern = /^(?:(010-?\d{4})|(01[1|6|7|8|9]-?\d{3,4}))-?\d{4}$/;
	
	var phone = $("#st_phone");
	
	var res = pattern.test(phone.val());
	
	var msg = $("#st_phoneMsg");
	
	if(res==true){
		msg.text("올바르게 입력되었습니다.");
		msg.css({
			"color":"blue",
			"display":"inline-block"
		});
		
	}else{
		msg.text("휴대폰을 다시 확인해주세요.");
		msg.css({
			"color":"red",
			"display":"inline-block"
		});
		phone.val("");
	}
}

function st_emailCheck(me){
	
	var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	var email = $("#st_email");
	
	var res = pattern.test(email.val());
	
	var msg = $("#st_emailMsg");
	
	if(res==true){
		msg.text("올바르게 입력되었습니다.");
		msg.css({
			"color":"blue",
			"display":"inline-block"
		});
		
	}else{
		msg.text("이메일을 다시 확인해주세요.");
		msg.css({
			"color":"red",
			"display":"inline-block"
		});
		email.val("");
	}
	
}

function emailCheck(me){
	
	var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	var email = $("#st_email");
	
	var res = pattern.test(email.val());
	
	var msg = $("#id_emailMsg");
	
	if(res==true){
		msg.text("아이디는 이메일 형태로 사용하실수 없습니다");
		msg.css({
			"color":"red",
			"display":"inline-block"
		});
		email.val("");
		
	}
	
}