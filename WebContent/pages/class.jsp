<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- JQuery로드 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<title>Insert title here</title>
<script type="text/javascript">

var number = ${c_number};

function commentList(){
	$.ajax({
		url : "commentList.do",
		type : "get",
		data : {"number" : number},
		dataType : "json",
		success : function(jarr){
			for(var i = 0; i < jarr.length; i++){
				var tr = $("<tr>")
				var id = $("<td>")
				id.text(jarr[i].id)
				
				var content = $("<td>")
				content.text(jarr[i].content)
				
				var date = $("<td>")
				date.text(jarr[i].date)
				var number = jarr[i].number
			
				var del = $("<td><input type='button' id='del"+number+"' onclick='commentdel("+number+");' value='삭제'>")
//					var del = $("<button id ='del' onclick='commentdel("+number+");' name='삭제' >")
				
				tr.append(id).append(content).append(date).append(del);
				
				$(".commentList").append(tr);
				
			}
		},
		error : function(xhrReq, status, error) {
			console.log(xhrReq + ' / ' + status + ' / ' + error);
		}
		
	})
}

$(document).ready(function() {
	
	
	
	
	

	
	
	
	
	$('#commentInsertBtn').click(function() {

		var params = $('#commentInsertForm').serialize();
		

			$.ajax({
				type : "post",
				url : "commentWrite.do",
				data : params,
				dataType : "json",
				success : function(resultStr) {

					if (resultStr.result == "1") {
						$(".commentList").empty();
						
						
						
						commentList();
						
					} else
						alert("내용을 입력해주세요");

				},
				error : function(xhrReq, status, error) {
					console.log(xhrReq + ' / ' + status + ' / ' + error);
				}
			})

			

	})
	commentList();

})

function commentdel(number){
	$.ajax({
		url : "commentDelete.do",
		data : {"number":number},
		type: "get",
		dataType : "json",
		success : function(resultStr){
			if(resultStr.result == "1"){
				alert("삭제완료");
				$(".commentList").empty();
				commentList();
			}
			if(resultStr.result == "2"){
				alert("삭제할 수 없는 댓글입니다.")
			}
			
		},
		erro : function(){
			alert("에러");
		}
		
		
	});
}


</script>
</head>


<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	
<input value="">
	<div align="center"><!-- 전체 div -->
	
		<div align="left" style="width: 900px; display:inline-block; vertical-align:top;"> <!-- 메인 내용div -->
			
			<div align="left"style="width: 700px; height: 450px; margin-top: 50px;">
				
				
				<div id="demo" class="carousel slide" data-ride="carousel">
				
					<!-- Indicators -->
					<ul class="carousel-indicators">
					
						
						<c:forEach items="${c_image }" varStatus="status" var="ci">
						<li data-target="#demo" data-slide-to="${status.index }" class="active"></li>
						
						</c:forEach>
						
						
					</ul>
					


					<!-- The slideshow -->
					<div class="carousel-inner">
					
							<div class="carousel-item active ">
														</div>
								
					<c:forEach items="${c_image }" varStatus="status" var="ci">

						
							
						
							<div class="carousel-item ">
							<img data-slide-to="${status.index }" src="classImageView.do?c_image=${status.current }" style="width:700px; height:450px;">
							</div>	
					</c:forEach>
						
						
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			
			<div align="left">
			<c:forEach items="${c_image }" varStatus="status" var="ci">
				
			
				<img data-target="#demo" data-slide-to="${status.index }" src="classImageView.do?c_image=${status.current}"
					class="smallimg"> 
			</c:forEach>
					
			</div>
			

			<div style="width: 850px; margin-top: 50px">
				<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

					<div class="menu" align="center"
						style="border-bottom: 1px solid #555; width: 850px;">
						<ul class="navbar-nav" style="display: inline-block;">
							<li class="nav-item">
								<h6>
									<a class="nav-link" href="">요약</a>
								</h6>
							</li>

							<li class="nav-item">
								<h6>
									<a class="nav-link" href="">선생님 소개</a>
								</h6>
							</li>

							<li class="nav-item">
								<h6>
									<a class="nav-link" href="">수업 소개</a>
								</h6>
							</li>

							<li class="nav-item">
								<h6>
									<a class="nav-link" href="">리뷰</a>
								</h6>
							</li>


						</ul>
					</div>
				</nav>
			</div>


			<table>
				<tr>
					<td>
						<div class="CR_span1" align="center">
							<img src="img/시간.png" id="profileP"
								style="width: 200px; height: 200px; margin-top: 50px"> <br>
							<a href="" class="">${id}</a>
						</div>
					</td>

					<td>
						<div style="display: inline-block">
							<pre id="class_info"></pre>
						</div>

						<button type="submit" class="btn btn-outline-secondary"
							style="margin-left: 300px; width: 200px">관심클래스 등록</button>
					</td>
				</tr>
			</table>

			<br> <br>

			<div class="CR_span" align="center">
				<img src="img/위치.png" id="location" class="CR_icon2"> <br>
				<a class="iconText">${c_location }</a>
			</div>

			<div class="CR_span" align="center">
				<img src="img/인원수.png" id="people" class="CR_icon2"> <br>
				<a class="iconText">최대${c_member }명</a>
			</div>

			<div class="CR_span" align="center">
				<img src="img/시간.png" id="time" class="CR_icon2"> <br>
				<a class="iconText">${c_classtime }시간</a>
			</div>

			<div class="CR_span" align="center">
				<img src="img/원.png" id="money" class="CR_icon2"> <br>
				<a class="iconText">${c_price}원/1회</a>
			</div>
			<div align="center"
				style="border-bottom: 1px solid #555; width: 800px;"></div>

			<div style="margin-top: 50px">
				<h3>선생님 소개</h3>
				<br>
				<pre id="T-introduce">${t_career } </pre>
				<pre id="T-introduce">${t_education } </pre>
				<pre id="T-introduce">${t_license } </pre>
			</div>

			<div align="center"
				style="border-bottom: 1px solid #555; width: 800px;"></div>
			<div style="margin-top: 50px">
				<h3>수업 소개</h3>
				<br>
				<pre id="C-introduce">${c_content } </pre>
			</div>
			
			<div align="center"
				style="border-bottom: 1px solid #555; width: 800px;"></div>
			
        <h3>리뷰</h3>
			<div class="container">
        <form id="commentInsertForm">
            <div class="input-group" style="width: 800px;">
               <input type="hidden" name="c_number" value="${c_number}"/>
               <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
               <span class="input-group-btn">
                    <button class="btn btn-default" type="button" id="commentInsertBtn">등록</button>
               </span>
              </div>
        </form>
    </div>
    <br><br>
    
    <div class="container">
        <table class="commentList">
        <tr>
        <td>이름</td>
        <td>내용</td>
        <td>날짜</td>
        <td>삭제</td>
        </tr>
        </table>
    </div>



			

<!-- 			<div align="center" -->
<!-- 				style="border-bottom: 1px solid #555; width: 800px;"></div> -->
<!-- 			<div style="margin-top: 50px"> -->
<!-- 				<h3>리뷰</h3> -->
<!-- 				<br> -->
<!-- 				<div -->
<!-- 					class="grey-color" -->
<!-- 					style=" height: 100px; width: 700px; border-radius: 10px" -->
<!-- 					align="center"> -->
<!-- 					<pre> 별점2</pre> -->

<!-- 				</div> -->

<!-- 				<div class="CR_span1" align="center"> -->
<!-- 					<img src="img/시간.png" id="profileP" -->
<!-- 						style="width: 100px; height: 100px; margin-top: 50px"> <br> -->
<!-- 					<a href="" class="">사용자</a> -->
<!-- 				</div> -->

<!-- 				<div style="display: inline-block"> -->
<!-- 					<pre id="class_info">원데이클래스</pre> -->
<!-- 				</div> -->

<!-- 			</div> -->


		</div><!-- 메인 내용 div END -->
		
		<div style="display:inline-block; vertical-align:top; width:300px;"><!-- 수업 날짜, 문의하기, 신청하기 -->
		
			<div style="height:300px; margin-top:100px;">
				<div class="card">
					<div class="card-header bg-info text-white">수업가능한날짜</div>
<%--    					 <div class="card-body">${c_startday } ${c_starttime }</div> --%>
<%--    					 <div class="card-body">${c_startday } ${c_starttime }</div>   --%>
<%--    					 <div class="card-body">${c_startday } ${c_starttime }</div>   --%>
    				
   				 </div>
   				 <div style="width: 140px; float: left">
   				 <c:forEach items="${c_startday}" var="c">
						
							<div align="center">${c } </div>
							
							
							
						
					</c:forEach>
					</div>
					
   				 <div style="width: 140px; float: left">
   				 <c:forEach items="${c_starttime}" var="cs">
						<div align="center">${cs } </div>
						
					</c:forEach>
   				</div>
				
					
   				 
			</div>
			
			<c:choose>
			<c:when test="${sessionScope.id != null }">
			<div style="height:150px;">
				<input type="button" class="btn btn-secondary" style="width:250px;" value="문의 하기">
			</div>
			
			<div>
				<input type="button" onclick="location.href='chargeApi.do'" class="btn btn-secondary" style="width:250px;" value="신청하기">
			</div>
			</c:when>
			</c:choose>
		</div><!-- 수업날짜, 문의하기, 신청하기 END -->
		
	</div><!-- 전체 div END -->
	

</body>
</html>