<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/review_s.js" type="text/javascript">

	
</script>

<script src="js/request.js" type="text/javascript"></script>

</head>

<script type="text/javascript">

	$(document).ready(function(){
		
		
		
		//$("#myT_phonenumber").text(phoneFormat($("#myT_phonenumber").text()));
		
	});
</script>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/class_review.jsp"></jsp:include>
	<jsp:include page="alert/delete_alert.jsp"></jsp:include>
	<jsp:include page="alert/t_profile.jsp"></jsp:include>
	<jsp:include page="alert/t_req_accept.jsp"></jsp:include>
	<jsp:include page="alert/dropMember.jsp"></jsp:include>


	<br>
	<div align="center">

		<div align=left style="width: 1200px;">

			<table>

				<tr height="250">
					<td width="300">
						<div align="center" style="width: 300px; height: 220px;">
							<img id="my_prophoto" src="profileImageView.do?id=${sessionScope.id }" width="200" height="200">
						</div>

					</td>


					<td width="700" style="vertical-align: top;">
						<div style="margin-top: 20px; height: 150px;">
							<h5>${info.name }</h5>
							<h5>${info.email }</h5>
						</div>


						<div id="memberButtons"
							style="vertical-align: midle; height: 40px;">
							<input type="button" class="btn btn-outline-secondary"
								id="modify_info" value="정보변경"
								onclick="location.href='changeInfo_sForm.do'"> <input
								type="button" class="btn btn-outline-secondary" id="modify_info"
								value="실시간톡" onclick="location.href='talk.do'"> <input
								type="button" class="btn btn-outline-secondary" id="modify_info"
								value="스케줄"> <input type="button"
								class="btn btn-outline-secondary" id="modify_info" value="선생님등록"
								onclick="location.href='t_ResistForm.do'"> 

						</div>
					</td>
				</tr>

			</table>


			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul id="myt_nav" class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav1" style="color: grey;">관심 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav2" style="color: grey;">결제 완료</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav3" style="color: grey;">환불된 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav4" style="color: grey;">완료된 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav5" style="color: grey;">나의 리뷰</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 15px;">
								<a href="#s_nav6" style="color: grey;">요청 클래스</a>
							</h4>
						</li>

					</ul>
				</div>
			</nav>


			<br>
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav1">관심 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div></div>

			</div>

			<br>

			<!-- 결제 완료된 클래스 -->

			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav2">결제 완료된 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 550px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>


						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>

					<div style="width: 300px;" align="center">
						<input type="button" style="width: 100px;" value="환불 하기"
							class="btn btn-outline-secondary"
							onclick="location.href='refund.do'">
					</div>
				</div>

				<div></div>

			</div>

			<br>
			<!-- 환불 완료된 클래스 -->
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav3">환불 완료된 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>



					</div>
				</div>

				<div></div>

			</div>

			<br>
			<!-- 완료된클래스 -->


			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav4">완료된 클래스</h3>
			<br>

			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>

						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_open()">
						</div>

					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>


						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_open()">
						</div>
					</div>
				</div>

				<div
					style="display: inline-block; float: left; margin-right: 100px;">
					<div>
						<img src="img/test.jpg" width="300" height="300">
					</div>
					<div>
						<div align="left"
							style="margin-top: 10px; width: 300px; height: 120px;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
								<h5 style="font-size: 15px; margin-top: 10px;">정지선</h5>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

								<div style="margin-top: 10px;">
									<h5 style="font-size: 20px;">★★★★☆</h5>
								</div>
							</div>
							<br>



						</div>

						<div style="width: 300px;" align="center">
							<input type="button" style="width: 100px;" value="리뷰 쓰기"
								class="btn btn-outline-secondary" onclick="class_review_open()">
						</div>

					</div>
				</div>

				<div></div>

			</div>

			<br>

			<!-- 나의 리뷰 -->

			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav5">나의 리뷰</h3>

			<br>


			<div align="left"
				style="width: 1200px; height: 150px; border-bottom: 1px solid black;">
				<div id="my_rev" align="left"
					style="border: 1px solid black; height: 100px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<h5 style="font-size: 15px;">[원데이]베이커리/케익 너만을 위한 케익 만들기</h5>
					<h5 style="font-size: 15px;">너무재미있었어요, 강사님도 너무 좋았고
						재미있었습니다!!!^^</h5>

					<div style="display: inline:block; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: right;" align="right">
						<input type="button" value="삭제" class="btn btn-outline-secondary"
							style="margin-right: 30px;"
							onclick="del_conf('my_rev_del','${number}')">
					</div>
				</div>

				<div id="my_rev" align="left"
					style="border: 1px solid black; height: 100px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<h5 style="font-size: 15px;">[원데이]베이커리/케익 너만을 위한 케익 만들기</h5>
					<h5 style="font-size: 15px;">너무재미있었어요, 강사님도 너무 좋았고
						재미있었습니다!!!^^</h5>

					<div style="display: inline:block; float: left;">
						<h5 style="font-size: 15px;">2019-09-15</h5>

					</div>

					<div style="display: inline:block; float: right;" align="right">
						<input type="button" value="삭제" class="btn btn-outline-secondary"
							style="margin-right: 30px;"
							onclick="del_conf('my_rev_del','${number}')">
					</div>
				</div>
			</div>

			<!-- 나의 리뷰2 -->
			<br>
			<div align="left"
				style="width: 1200px; height: 500px; border-bottom: 1px solid black;">

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>

				<div style="display: inline-block; float: left; margin-right: 80px;">
					<div align="center"
						style="border: 1px solid black; border-bottom: none;">
						<img src="img/test.jpg" width="250" height="250"
							style="margin-top: 10px;">
					</div>
					<div>
						<div align="left"
							style="width: 300px; height: 120px; border: 1px solid black; border-top: none;">

							<div align="center"
								style="display: inline-block; float: left; vertical-align: center; width: 100px; margin-top: 10px;">
								<img class="myT_stphoto" src="img/test.jpg"
									style="width: 70px; height: 70px;"><br>
							</div>

							<div
								style="display: inline-block; float: left; margin-left: 10px; margin-top: 10px;">
								<div style="width: 150px; margin-top: 10px;">
									<h5 style="font-size: 15px;">[정규]웹개발/JAVA</h5>
									<h5 style="font-size: 15px;">현대인의 필수 웹개발</h5>
								</div>

							</div>
							<br>



						</div>

						<div style="width: 300px; margin-top: 20px;" align="center">
							<input type="button" value="환불 하기"
								class="btn btn-outline-secondary"
								onclick="location.href='refund.do'">
						</div>

					</div>
				</div>





			</div>

			<br>

			<!-- 요청한 클래스 -->
			
			<div>

			<h3 style="display:inline-block; font-weight: 800; font-size: 25px; margin-left: 22px;"
				id="s_nav6">요청한 클래스</h3>
				
			<h5 style="display:inline-block; float:right;" onclick="location.href='myRequestList.do'">더보기>></h5>	

			</div>

			<div align="left"
				style="width: 1200px; height: 400px; border-bottom: 1px solid black;">
				
				<c:forEach var="r" items="${myRequest }" begin="0" end="1">

				<div id="my_req" align="left"
					style="border: 1px solid black; height: 250px; width: 550px; display: inline:block; float: left; margin-right: 50px;">
					<div style="margin-top: 10px; margin-left: 10px;">
						<h5 style="font-size: 15px;">[분야]/[${r.c_category }]</h5>
						<h5 style="font-size: 15px;">[요청사항]${r.c_title }</h5>
					</div>

					<div
						style="display: inline:block; margin-top: 5px; margin-left: 10px; float: left;">
						<h5 style="font-size: 15px;">[원하는날짜]${r.c_startday }:${r.c_starttime }</h5>

					</div>

					<div style="display: inline:block; float: left; margin-left: 20px;">
						<input type="button" style="width: 120px;" value="삭제"
							onclick="delRequest('${r.number}')">
					</div>

					<br>
					<!-- 선생님현황 -->
					<c:choose>
					<c:when test="${r.teacher!=null }">
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="profileImageView.do?id=${r.teacher}"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">${r.teacher }</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px; width:300px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open('${r.teacher}')">
							<!-- 선생님 아이디를 가지고 간다 -->
							<c:if test="${r.r_status==2 }">
							<input type="button" value="선생님 수락"
								onclick="t_accept_open('${r.number}','${r.teacher }')"
								style="width: 120px; margin-left: 12px;">
							</c:if>
							
							<c:if test="${r.r_status==3 }">
								<h5 style="display:inline-block; font-size:20px;">수락완료</h5>
							</c:if>	
							<input type="button" value="선생님 거절" style="margin-left:12px; margin-top:10px; width:120px;" onclick="rejectT('${r.number}')">	

						</div>


						<br>

					</div>
					</c:when>
					</c:choose>
				</div>
				
				</c:forEach>
				
				
				
			</div>
		</div>

	</div>



</body>

<script src="js/request.js" type="text/javascript"></script>
</html>