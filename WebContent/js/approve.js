/**
 * 클래스, 선생님등록 승인 관련기능
 */

function cl_approve(){//클래스 등록 승인
	
}


function tc_approve(){//선생님 등록 승인
	
	$.each($("#approve_Containter2 #approveCard"), function(){
		
		var index = $(this).index();
		
		var id = $("#approveInfo h5").eq(index).text();
		
		$.ajax({
			
			type:'post',
			url:'teacherAccept.do',
			dataType:'json',
			data:{id:id},
			success:function(){
				alert("성공!");
			},
			error:function(){
				alert("에러!");
			}
		});
		
	});
}

function rf_approve(){ //환불등록 승인
	
}

function tc_res(){
	$.each($("#approveCard"), function(){
		
		var index = $(this).index();
		
		var ch = $("#chApprove input").eq(index).is(":checked");
		
		if(ch==true){
			$("#approve_Containter2").append($(this));
		}else{
			alert("안체크!");
		}
	});
}

function tc_cancel(){
	$.each($("#approveCard"), function(){
		
		var index = $(this).index();
		
		var ch = $("#chApprove input").eq(index).is(":checked");
		
		if(ch==true){
			$("#approve_Containter1").append($(this));
		}else{
			alert("안체크!");
		}
	});
}