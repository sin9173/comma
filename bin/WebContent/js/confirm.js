/**
 * 확인창 관련 기능
 */
// 마이페이지s-나의리뷰(my_rev_del),마이페이지s-요청한 클래스 (my_req_del)DB 삭제 해야함
var option = "";
var number = "";
function del_conf(keyword, id) {// 삭제 확인

	option = keyword;
	number = id;

	$('#delete_alert').show();

	$(".dim").show();

}

function delete_ajax() {
	// 클래스요청삭제
	if (option === ("my_req_del")) {

		$.ajax({
			url : "deleteReq.do",
			type : "post",
			contentType : "application/json",
			data : {
				number : number
			},
			success : function(data) {
				console.log(data);
			},
			error : function(xhr, status, error) {
				console.log("error");
			}
		});

		// 나의리뷰 삭제
	} else if (option === ("my_rev_del")) {
		
		$.ajax({
			url : "deleteReviewForm.do",
			type : "post",
			contentType : "application/json",

			data : {
				number : number
			},
			dataType : "json",
			success : function(data) {
				console.log(data);
			},
			error : function() {
				console.log("error");
			}

		});
		// 등록된클래스 삭제
	} else if (option === ("t_class_del")) {
		$.ajax({
			url : "deleteClassForm.do",
			type : "post",
			contentType : "application/json",

			data : {
				number : number
			},
			dataType : "json",
			sucess : function(data) {
				console.log(data);
			},
			error : function() {

				console.log("error");
			}

		});
	}
};

function del_conf_close() {// 삭제 확인
	$("#delete_alert").hide();
	$(".dim").hide();
}

function approve_conf() {// 승인 확인

}

function request_cancel_conf() {// 신청 철회 확인창

}