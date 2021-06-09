/**
 * 고객센터
 * 공지사항,질문게시판
 * 
 */
function question_write_open() {//질문 작성 창 열기
	$("#question_write").show();
	$(".dim").show();
}

function question_write(id){
	var title = $("#q_title").val();
	var content = $("#q_content").val();
	$.ajax({
		type : "post",
		dataType : "json",	
/*		contentType : "application/json",*/
		url : "question_write.do",
		data : {
			title : title,
			content : content,
			id : id
		},
		success : function(data) {
			alert("작성되었습니다.")
			question_write_close();
			location.href='question.do'
		},
		error : function() {
			alert("작성되었습니다..")
			question_write_close();
			location.href='question.do'
		}

	});
}


function question_write_close() {//질문 작성 창 닫기
	$("#question_write").hide();
	$(".dim").hide();
}
function question_view_open(number) {//질문 보기 창 열기
	
	$.ajax({
		type:'post',
		url:'questionView.do',
		dataType:'json',
		data:{
			number:number
		},
		success:function(data){
			
			$.each(data, function(key, val){
				
				if(key=='content'){
					$('#q_contentView pre').text(val);
				}else if(key=='title'){
					$('#q_titleView').text(val);
				}else if(key=='date'){
					var dat = new Date(val);
					
					$('#q_dateView').text(dat.getFullYear()+"-"+dat.getMonth()+"-"+dat.getDay());
				}else if(key=='id'){
					$("#q_idView").text(val);
				}
			});
		},
		error:{
			
		}
			
	});
	
	$("#question_view").show();
	$(".dim").show();
}
function question_view_close() {//질문 보기 창 닫기
	$("#question_view").hide();
	$(".dim").hide();
}

