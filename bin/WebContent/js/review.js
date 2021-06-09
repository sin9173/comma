// 리스트 표시
// 리퓨창

function picture_review_detail() {
	
}

function addRevList(page, keyword){
	
	if(keyword=='null'){keyword=null;}
	
	$.ajax({
		
		type:'post',
		url:'addReviewList.do',
		dataType:'json',
		data:{
			page:page,
			keyword:keyword
		},
		success:function(data){
			
			$.each(data, function(key1, val1){
				
				$.each(val1, function(key2, val2){
					
					var div1 = $('<div class="card" style="width: 340px; height:330px; display:inline-block; float:left; border:1px solid red; margin-top:50px; margin-right:50px;" onclick="pReview_view_open(${number})"></div>');
					var div2 = $('<div class="card-body" style="border:1px solid blue; width:340px; height:120px;"></div>');
					var div3 = $('<div align="Left" style="display:inline-block; float:left; width:90px; height:90px;"></div>');
					var div4 = $('<div align="left" style="display: inline-block; float:left; width:200px;"></div>');
					
					
					var revImg = $('<img class="card-img-top" src="reviewImageView.do?number='+val2.number+'" style="width: 100%; height:200px;">');
					var proImg = $('<img src="profileImageView.do?id='+val2.id+'" id="my_prophoto" style="width:80px; height:80px;">');
					
					var idH5 = $('<br> <a style="margin-left: 13px;">'+val2.id+'</a>');
					var content = $('<h5>'+val2.title+'</h5>');
					
					div4.append(content);
					div3.append(proImg);
					div3.append(idH5);
					div2.append(div3);
					div2.append(div4);
					div1.append(revImg);
					div1.append(div2);
					
					$("#rev_List").append(div1);
					
				});
			});
		},
		error:function(){
			alert("에러");
		}
	});
	
	
	
}



function rev_View(number){
	
	alert("review_view");
	$.ajax({
		
		type:'post',
		url:'ReadReview.do',
		dataType:'json',
		data:{number:number},
		success:function(data){
			
			$.each(data, function(key, val){
				
				if(key=='number'){
					
					$("#rev_ImgVw img").attr('src', 'reviewImageView.do?number='+val);
				}else if(key=='id'){
					$("#rev_proImgVw img").attr('src', 'profileImageView.do?id='+val)
					$("#rev_IdVw").text(val);
				}else if(key=='content'){
					
					$("#rev_ConVw").text(val);
				}
				
			});
		},
		error:function(){
			alert("에러!");
		}
		
	});
}