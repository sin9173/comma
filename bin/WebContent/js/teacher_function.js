/**
 * 선생님 경고창
 */

function t_profile_open(id) {// 선생님 프로필 창 열기

	
	
	$.ajax({
		type:'post',
		url:'memberInfo.do',
		dataType:'json',
		data:{id:id},
		success:function(data){
			
			$.each(data, function(key, val){
				
				if(key=='id'){
					$("#tp_img img").attr('src', 'profileImageView.do?id='+val);
				}else if(key=='name'){
					$("#tp_name h3").text('[이름]'+val);
				}else if(key=='email'){
					$("#tp_email h5").text('[이메일]'+val);
				}else if(key=='gender'){
					$("#tp_gender h5").text('[성별]'+(val=='man'?'남':'여'));
				}else if(key=='p_number'){
					$("#tp_phone h5").text('[연락처]'+phoneFormat(val));
				}else if(key=='t_career'){
					$("#tp_career h5").text('[경력]'+val);
				}else if(key=='t_license'){
					$("#tp_license h5").text('[자격증]'+val);
				}else if(key=='t_sns'){
					$("#tp_sns h5").text('[소셜미디어]'+val);
				}else if(key=='t_education'){
					$("#tp_education h5").text('[학력]'+val);
				}
			});
		},
		error:function(){
			alert("에러!");
		}
	});
	$('#t_profile').show();
	$(".dim").show();

}
function t_profile_close() {// 선생님 프로필 창 닫기
	$("#t_profile").hide();
	$(".dim").hide();
}
function t_accept_open(number, teacher) {// 선생님 수락창 열기

	var conf = confirm('수락하시겠습니까?');
	
	if(conf){
		t_accept_ajax(number, teacher);
	}else{
		return;
	}
	
	
}
function t_accept_close() {// 선생님 수락 창 닫기
	$("#t_req_accept").hide();
	$(".dim").hide();
}
function t_accept_ajax(number, teacher) {// 선생님 수락 ajax

	$.ajax({
		url : "acceptT.do",
		type : "post",
		dataType : "json",
		data : {
			number : number,
			teacher : teacher
		},
		success : function(data) {
			
			alert('수락되었습니다.');
//			console.log(data);
			location.href='mypage.do';
		},
		error : function() {
			alert('에러');
			console.log("error");
		
		}

	});
}

function declaration_s_open(id) {// 학생 신고 창 열기 학생 이름을매게변수로 받는다
	$("#s_warning").show();
	$(".dim").show();
}
function declaration_s_close() {// 학생 신고 창 닫기
	$("#s_warning").hide();
	$(".dim").hide();
}
function declaration_ajax(id) {// 학생신고 ajax 학샐이름을 매게 변수로 받는다

}


function modeChange(me){
	var ch = $("input[id=tSwitch]").prop("checked");
	
	var mode = 0;
	if(ch){
		mode = 2;//선생님모드
	}else{
		mode = 1;//학생모드
	}
	
	
	$.ajax({
		url:"modeChange.do",
		type:"POST",
		data:{
			mode:mode
		},
		datatype:"json",
		success:function(){
			
		},
		error:function(){
			aler("에러!!")
		}
	});
}


function modeSwitch(mode){
	
	
	
	
	
	if(mode=='tc'){
		$("#tSwitch").prop("checked", true);
	}else{
		$("#tSwitch").prop("checked", false);
	}
}



function rejectT(number){
	
	var conf = confirm('제안을 거절 하시겠습니까?');
	
	if(conf){
		
		$.ajax({
			type:'post',
			url:'offerRequest.do',
			dataType:'json',
			data:{
				number:number,
				type:'0',
				
			},
			success:function(){
				alert("완료되었습니다.");
				location.href='mypage.do';
			},
			error:function(){
				alert("에러!");
			}
		});
	}else{
		
	}
}


function phoneFormat(num){

    

    var formatNum = '';

    

    if(num.length==11){


        formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');


    }else if(num.length==8){

        formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');

    }else{

        if(num.indexOf('02')==0){

            formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');

            

        }else{

            formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');

            

        }

    }

    return formatNum;

    

}