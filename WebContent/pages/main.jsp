<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/cssconfig.css">

<!-- JQuery로드 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>

<script type="text/javascript">

	$(document).ready(function() {

				
										
	
// 	function main() {
// 		$.ajax({
// 			type : "get",
// 			url : "mainList.do",
// 			dataType : "json",
// 			success : function (arr) {
				
				
				
// 				for(var i = 0; i < arr.length; i++){
// 					var number = $(arr[i].c_number);
// 					var div = $("<a href='classForm.do?number="+arr[i].c_number+"' style='width:300px; height: 300px; float: left; border: 1px solid #ccc; margin-right: 100px'>")
					
// 					var img = $("<img src='classImageView.do?c_image='"${c_image }"' style='width: 300px; height: 200px;'>")
// 					var content = $("<div>")
// 					content.text(arr[i].c_content);
// 					var name = $("<div>");
// 					name.text(arr[i].c_name);
// 					var price =$("<div>");
// 					price.text(arr[i].c_price);
// 					div.append(img).append(content).append(name).append(price);
// 					$("#classList").append(div);
// 				}
				
// 			},
// 			error : function (xhrReq, status, error) {
// 				alert("에러창")
// 				console.log(xhrReq + ' / ' + status + ' / ' + error);
				
// 			}
			
			
			
// 		})
// 	}
// 	main();
})
</script>

<body>
	<jsp:include page="header.jsp"></jsp:include><br>
	<br>
	<!-- slide images -->
	<div align="center">
		<div style="width: 1200px; height: 600px;">
			<div id="demo" class="carousel slide democlass" data-ride="carousel">

				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>

				<!-- The slideshow -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/slide1.jpg" alt="Los Angeles" style="height: 600px;">
					</div>
					<div class="carousel-item">
						<img src="img/slide2.jpg" alt="Chicago" style="height: 600px;">
					</div>
					<div class="carousel-item">
						<img src="img/slide3.jpg" alt="New York" style="height: 600px;">
					</div>
				</div>

				<!-- Left and right controls -->
				<div>
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
				
			</div>
		</div>

		
		<div align="center">
			<div align="left" style="width:1200px "  id="classList" >
			
<!-- 				<div style="width:300px; height: 400px;" id="classList"> -->
<!-- 					<img src="img/시간.png" width="300px" height="300px"> -->
<!-- 					<img src="img/시간.png" width="80px" height="80px"> -->
<!-- 					<div>이상훈 </div> -->
<!-- 					<div>내용내용내용내용내용내용내용내용</div> -->
<!-- 					<div>가격</div> -->
<!-- 				</div> -->
			
			
			</div>
		

	</div>
<!-- 	<div  align="center" style="background-color: rgba(0, 0, 0, 0.5); z-index:31;width: 1200px;  -->
<!-- 	height: 600px; left:351px; top: 330px; position: relative;"> -->
				
<!-- 				<div> -->
<!-- 				<h1 style="color: white;">안녕 하세요</h1> -->
<!-- 				</div> -->
				
<!-- 				</div> -->
	<br>
	<br>

	<!--     <div align="left" style="margin-left: 500px;"> -->
	<!--         <div style="width: 1200px;"> -->
	<!--             <h2 style="font-weight: 900">인기 클래스</h2><br><br> -->

	<!--             <div align="Left"> -->
	<!--                 <img src="img/시간.png" id="cook" width="300px" height="300px"> -->

	<!--             </div><br> -->

	<!--             <table> -->
	<!--                 <tr> -->
	<!--                     <td> -->
	<!--                         <div align="Left"> -->
	<!--                             <img src="img/시간.png" id="time" width="80px" height="80px"> -->
	<!--                             <br> -->
	<!--                             <a style="margin-left: 13px;">사용자</a> -->
	<!--                         </div> -->
	<!--                     </td> -->

	<!--                     <td> -->
	<!--                         <div style="display: inline-block"> -->
	<!--                             <h6>[원데이]베이커리/케익너만을<br>위한 케익 만들기<br>40,000/1인</h6> -->
	<!--                         </div> -->
	<!--                         <br><br> -->
	<!--                         <img src="img/원.png" id="cook" class="icon" width="20px" height="20px"> -->

	<!--                     </td> -->
	<!--                 </tr> -->

	<!--             </table> -->



	<!--         </div> -->


	<!--     </div> -->

	<div align="center">
		<div align="left" style="width: 1200px;">
			<h2>인기 클래스</h2>

		</div>
	</div>

	<div align="center">
		<div align="left" style="width: 1200px" id="mainList">
			<c:forEach var="m" items="${mainList}">
					
					<a href='classForm.do?number=${m.c_number }' style='width:300px; height: 300px; float: left; border: 1px solid #ccc; margin-right: 100px; margin-bottom: 50px;'>
						<img src="classImageView.do?c_image=${m.c_image }" style="width: 300px; height: 200px;">
						
						<img src="profileImageView.do?id=${m.id }" class="rounded-circle" style="float:left; width: 70px; height: 70px;">
						
						<div style="float: right; width: 210px; height: 35px;">${m.c_content }</div>
						<div style="float: right; width: 210px; height: 35px;">${m.c_price }</div>
						<div style="float:left; width: 80px; height: 30px;">${m.id }</div>
						</a>
				
			</c:forEach>

		</div>

	</div>

</body>


</html>