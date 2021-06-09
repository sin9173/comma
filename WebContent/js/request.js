/**
 * 요청 관련기능
 * 
 */

 function class_request() {//클래스 요청 기능
	 
 }

 function teacher_request(name, className) {//선생님 요청 기능
	 
 }
 
 function class_req_retract(number){
	 
	 $.ajax({
		 type:'post',
		 url:'offerRequest.do',
		 dataType:'json',
		 data:{number:number, type:'0'},
		 success:function(){
			 alert("철회되었습니다.");
			 location.href='mypage.do';
		 },
		 error:function(){
			 alert("에러!");
		 }
	 });
	 
 }
 
 
 function addReqList(page, cat, key){
	 
	 if(cat=='null'){cat=null}
	 if(key=='null'){key=null}
	 
	 $.ajax({
		type:"post",
		url:"addClassReqList.do",
		dataType:"json",
		data:{page:page, category:cat, keyword:key},
		success : function(data){
			
			
			$.each(data, function(key, val){
				
				$.each(val, function(key1, val1){
					
					var a = $('<div style="display:inline-block; float:left; width:450px; height:170px; background: #CCFFCC; margin-left:50px; margin-top:50px;" onclick="classReqInfo('+val1.number+')"></div>');
					var b = $('<div style="display:inline-block; float:left; width:150px;"></div>');
					var c = $('<div align="left" style="display:inline-block; float:left; width:295px;"></div>');
					var d = $('<div style="width:290px;"></div>');
					
					
					var profile = $('<img src="profileImageView.do?id='+val1.id+'" id="my_prophoto" class="icon" style="width: 145px; height: 145px">');
					var catH5 = $('<h5 style="font-size:15px;">[분야]-['+val1.c_category+']</h5>');
					var titleSubH5 = $('<h5 style="font-size:15px;">[요청사항]</h5>');
					var titleH5 = $('<h5 style="font-size:15px;">'+val1.c_title+'</h5>');
					var locImg = $('<img style="display:inline-block; vertical-align:top;" src="img/위치.png" id="money" class="icon" width="15px" height="15px">');
					var locH5 = $('<h5 style="font-size:15px; display:inline-block;">[위치]'+val1.c_location+'</h5>');
					
					var priceImg = $('<img src="img/원.png" id="money" class="icon" width="20px" height="20px">');
					var priceH5 = $('<h5 style="font-size:15px; display:inline-block;">'+val1.price+'원</h5>');
					
					b.append(profile);
					
					d.append(catH5);
					d.append(titleSubH5);
					d.append(titleH5);
					d.append(locImg);
					d.append(locH5);
					
					c.append(d);
					
					c.append(priceImg);
					c.append(priceH5);
					
					a.append(b);
					a.append(c);
					
					
					$("#cl_reqListForm").append(a);
				})
				
				
			})
		},
		error : function(){
			alert("에러ㅠㅠ");
		}
		 
	 });
	 //$("#cl_reqListForm")
 }
 
 
 function classReqInfo(number){
	 
	 location.href='classReq.do?number='+number;
 }
 
 
 
 function reqOffer(number, type, id){
	 
	 
	 $.ajax({
		
		 type:'post',
		 url:'offerRequest.do',
		 dataType:'json',
		 data:{
			 number:number,
			 type:type,
			 id:id
		 },
		 success:function(data){
			 alert(data.msg);
		 },
		 error:function(){
			 alert("에러!");
		 }
			 
	 });
 }
 
 
 function delRequest(number){
	 
	 var conf = confirm('요청한클래스를 삭제하시겠습니까?');
	 
	 if(conf){
		 $.ajax({
			type:'post',
			url:'deleteReq.do',
			dataType:'json',
			data:{number:number},
			success:function(){
				alert("삭제되었습니다.");
				location.href='mypage.do';
			},
			error:function(){
				alert("에러!")
			}
		 });
	 }else{
		 return;
	 }
 }
 
 