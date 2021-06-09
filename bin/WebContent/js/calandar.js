/**
 * 달력(일정) 관련 기능
 */

function calandar_view(YY, MM){//달력 출력
	var sw = 0;
	var day = 1;
	
	var date = new Date();
	date.setDate(1);
	date.setMonth(MM-1); //월 -1
	
	var week = date.getDay();
	
	//alert(date);
	var lastday = (new Date(YY, MM, 0)).getDate(); //마지막 날짜
	
	$.each($("#myT_table tr td"), function(){
		$(this).empty();
		$(this).css('background-color','#FFFFFF');
	})
	$.each($("#myT_table tr td"),function(){
		var index1 = $(this).parent().index();
		var index2 = $(this).index();
		
		
		if(index1==1 && index2==week){
			sw=1;
		}
		
		
		
		if(sw==1 && day<=lastday){
			//(this).append('<h5>'+index1+':'+index2+'</h5>');
			(this).append(day+'일');
			
			day = day + 1;
		}	
		
	});
}




function sc_add(date, time, cl){//일정 추가
	
	var year = $("#myT_Year").val();
	var month = $("#myT_Month").val();
	
	$.each($("#myT_table tr td"), function(){
		
		var d = year + '-' + month + '-' + $(this).text();
		
		if(date==d){
			
			$(this).append('<br>');
			$(this).append(time);
			$(this).append('<br>');
			$(this).append(cl);
			$(this).css('background-color','#CC99FF');
		}
	});
}


function sc_del(cl_num){//일정 삭제
	
}