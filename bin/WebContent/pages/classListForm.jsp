<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- JQuery로드 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>

<script type="text/javascript">
	$(document).ready(function() {

// 						function classList() {
						
// 							$.ajax({
// 										type : "get",
// 										url : "classAllList.do",
// 										dataType : "json",
// 										success : function(arr) {
// 											// 				alert(arr);

// 											for (var i = 0; i < arr.length; i++) {
												
// 												var div = $("<a href='classForm.do?number="+arr[i].c_number+"' style='width:300px; height: 300px; float: left; border: 1px solid #ccc; margin-right: 100px; margin-bottom: 50px;'>")
// 												// 					var img = $("<img width='300px' height='300px'>");
// 												var img = $("<div>")
// 												img.text(arr[i].c_image);
// 												var name = $("<div>");
// 												name.text(arr[i].c_name);
// 												var price = $("<div>");
// 												price.text(arr[i].c_price);
												
// 												div.append(img).append(name).append(price);
// 												$("#classList").append(div);
// 											}

// 										},
// 										error : function(xhrReq, status, error) {
// 											alert("에러창")
// 											console.log(xhrReq + ' / ' + status
// 													+ ' / ' + error);

// 										}

// 									})
// 						}
// 						classList();
						
					

})
</script>


<body>

	<jsp:include page="header.jsp"></jsp:include>
	<script type="text/javascript">
		var ischk = false;
		$(document).ready(function() {
			$('#filter_area').hide();

			$('#filter_btn').on("click", function() {

				if (ischk == false) {
					$('#filter_area').slideDown();
					ischk = true;
				} else {

					$('#filter_area').slideUp();
					ischk = false;
				}

			});

		});
	</script>
	<div align="center">
		<div align="center" style="width: 1200px">
			<br> <br> <br>
			<div class="span" align="center">
				<img src="img/요리.png" id="cook" class="icon"> <br> <a
					href="" class="iconText">요리</a>
			</div>

			<div class="span" align="center">
				<img src="img/수공예.png" id="handmade" class="icon"> <br> <a
					href="" class="iconText">수공예</a>
			</div>

			<div class="span" align="center">
				<img src="img/미술.png" id="art" class="icon"> <br> <a
					href="" class="iconText">미술</a>
			</div>

			<div class="span" align="center">
				<img src="img/액티브티.png" id="activity" class="icon"> <br>
				<a href="" class="iconText">액티브티</a>
			</div>

			<div class="span" align="center">
				<img src="img/뷰티.png" id="beauty" class="icon"> <br> <a
					href="" class="iconText">뷰티</a>
			</div>

			<div class="span" align="center">
				<img src="img/음악.png" id="music" class="icon"> <br> <a
					href="" class="iconText">음악</a>
			</div>

			<div class="span" align="center">
				<img src="img/언어.png" id="language" class="icon"> <br> <a
					href="" class="iconText">언어</a>
			</div>


			<div class="span" align="center">
				<img src="img/웹개발.png" id="webDevelopment" class="icon"> <br>
				<a href="" class="iconText">웹개발</a>

			</div>

			<div class="span" align="center">
				<img src="img/기타등등.png" id="exception" class="icon"> <br>
				<a href="" class="iconText">기타등등</a>
			</div>
			<br> <br> <br>
			
			<form action="classListForm.do">
				<div align="center">
					<div class="input-group mb-3" style="width: 600px;">
						<input type="text" name="keyword" class="form-control" placeholder="검색어를 입력해주세요.">
						<div class="input-group-append">
							<button class="btn btn-secondary" type="submit">검색</button>
						</div>
					</div>
				</div>
			</form>
			
			<div align="center">
		<div align="left" style="width: 1200px" id="classList">
		
		
			<c:forEach var="c" items="${classList}">
					
					<a href='classForm.do?number=${c.c_number }' style='width:300px; height: 300px; float: left; border: 1px solid #ccc; margin-right: 100px; margin-bottom: 50px;'>
						<img src="classImageView.do?c_image=${c.c_image }" style="width: 300px; height: 200px;">
						
						<img src="profileImageView.do?id=${c.id }" class="rounded-circle" style="float:left; width: 70px; height: 70px;">
						
						<div style="float: right; width: 210px; height: 35px;">${c.c_content }</div>
						<div style="float: right; width: 210px; height: 35px;">${c.c_price }</div>
						<div style="float:left; width: 80px; height: 30px;">${c.id }</div>
						</a>
				
			
			</c:forEach>


		</div>

	</div>
			
			
			
			
			<div>
				<button type="button" class="btn btn-outline-secondary"
					id="filter_btn" style="float: right; margin-right: 20px">필터</button>
				<br> <br>
				<div style="width: 1200px; height: 400pX; position: absolute;"
					id="filter_area" align="center" class="grey-color">


					<table>
						<tr>
							<td id="sec-1" style="width: 400px">
								<div style="margin-left: 50px; margin-top: 30px; height: 150px;">
									<h4 style="font-size: 20px; font-weight: 600;">위치</h4>
									<!-- 위치 검색 박스 -->


									<div style="display: inline-block; float: left; width: 100px;">
										<select name="province" class="custom-select">
											<option selected>도</option>
											<option value="spec">특별시</option>
											<option value="geonggi">경기도</option>
											<option value="geongsangbuk">경상북도</option>
											<option value="geongsangnam">경상남도</option>
											<option value="chungcheongbuk">충청북도</option>
											<option value="chungcheongnam">충청남도</option>
											<option value="jeonlabuk">전라북도</option>
											<option value="jeonlanam">전라남도</option>
											<option value="jeju">제주도</option>


										</select>
									</div>

									<div style="display: inline-block; float: left; width: 100px;">
										<select name="city" class="custom-select">
											<option selected>시</option>
											<option value="seoul">서울시</option>

										</select>
									</div>

									<div style="display: inline-block; float: left; width: 100px;">
										<select name="gu" class="custom-select">
											<option selected>구</option>
											<option value="jonglo">종로</option>

										</select>
									</div>


									<!-- 위치 검색 박스 -->




								</div>

								<div style="margin-left: 50px; margin-top: 30px">
									<h4 style="font-size: 20px; font-weight: 600;">가격</h4>
									<input type="checkbox" name="chk_price3"
										style="width: 15px; height: 15px"> 10,000원이상 30,000원
									이하<br> <input type="checkbox" name="chk_price4.5"
										style="width: 15px; height: 15px"> 30,000원이상 45,000원
									이하<br> <input type="checkbox" name="chk_price6"
										style="width: 15px; height: 15px"> 45,000원이상 60,000원
									이하<br> <input type="checkbox" name="chk_price"
										style="width: 15px; height: 15px"> 60,000원이상
								</div>

							</td>
							<td id="sec-line1">
								<div
									style="height: 300px; border-right: 1px solid black; margin-top: 50px"></div>
							</td>
							<td id="sec-2" style="width: 400px">
								<div style="margin-left: 50px; margin-top: 10px">
									<h4 style="font-size: 20px; font-weight: 600;">별점</h4>
									<input type="checkbox" name="star4">
									<h4 style="display: inline-block; margin-left: 20px">★★★★</h4>
									이상<br> <input type="checkbox" name="star3">
									<h4 style="display: inline-block; margin-left: 20px">★★★</h4>
									이상<br> <input type="checkbox" name="star2">
									<h4 style="display: inline-block; margin-left: 20px">★★</h4>
									이상<br> <input type="checkbox" name="star">
									<h4 style="display: inline-block; font-size: 15px;">직접입력</h4>
									<br> <input type="text" name="star-front"
										style="width: 50px;">이상 ~ <input type="text"
										name="star-rear" style="width: 50px;">이하 <br>
								</div>
								<div style="margin-left: 50px; margin-top: 10px">
									<h4 style="font-size: 20px; font-weight: 600;">원데이/정규</h4>
									<input type="checkbox" name="chk_oneday"
										style="width: 15px; height: 15px"> 원데이 <input
										type="checkbox" name="chk_regular"
										style="width: 15px; height: 15px; margin-right: 10px;">
									정규
								</div>

								<div style="margin-left: 50px; margin-top: 30px">
									<h4 style="font-size: 20px; font-weight: 600;">수업형태</h4>
									<input type="checkbox" name="chk_classgroup1"
										style="width: 15px; height: 15px"> 1:1 <input
										type="checkbox" name="chk_classgroup2"
										style="width: 15px; height: 15px; margin-right: 10px;">
									그룹<br>
								</div>

							</td>
							<td id="sec-line2">
								<div
									style="height: 300px; border-right: 1px solid black; margin-top: 50px"></div>
							</td>
							<td id="sec-3" style="width: 400px">
								<div style="margin-left: 50px;">
									<h4 style="font-size: 20px; font-weight: 600;">수업 진행 시간</h4>
									<input type="checkbox" name="chk_classTime_1"
										style="width: 15px; height: 15px"> 1시간 이하<br> <input
										type="checkbox" name="chk_classTime_2"
										style="width: 15px; height: 15px"> 1시간 이상 2시간 이하<br>
									<input type="checkbox" name="chk_classTime_3"
										style="width: 15px; height: 15px"> 2시간 이상 3시간 이하<br>
									<input type="checkbox" name="chk_classTime_"
										style="width: 15px; height: 15px"> 3시간 이상
								</div>

								<div style="margin-left: 50px; margin-top: 30px">



									<h4 style="font-size: 20px; font-weight: 600;">요일/시간</h4>
									<div style="margin-bottom: 10px;">
										<input type="checkbox" name="chk_weekday"
											style="width: 15px; height: 15px"> 평일 <input
											type="checkbox" name="chk_weekend"
											style="width: 15px; height: 15px"> 주말

									</div>
									<div>
										<input type="checkbox" name="chk_am"
											style="width: 15px; height: 15px"> 오전 <input
											type="checkbox" name="chk_pm"
											style="width: 15px; height: 15px"> 오후 <input
											type="checkbox" name="chk_evening"
											style="width: 15px; height: 15px"> 저녁
									</div>


								</div> <br> <br>
								<div style="float: right; margin-right: 30px;">
									<input type="button" value="검색"
										class="btn btn-outline-secondary" style="width: 100px;">
								</div>

							</td>

						</tr>

					</table>


				</div>
			</div>
		</div>

	</div>

	
</body>
</html>