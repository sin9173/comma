<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>
/* .inlineArr {
	display: inline-block;
	vertical-align: top;
	float: left;
} */
</style>
<script src="js/jquery.serializeObject.js"></script>
<script src="js/teacherResist.js" type="text/javascript"></script>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>


	<div align="center">
		<h2 style="font-weight: 900">선생님 등록</h2>
		<br>

		<form id="t_resistForm" action="t_Resist.do"
			enctype="multipart/form-data" accept-charset="UTF-8">


			<div align="center">
				<!-- 밑줄 상단 구간 -->
				<div>
					<div align="center"
						style="display: inline-block; vertical-align: top; margin-bottom: 50px; margin-left: 300px;">
						<!-- 왼쪽 사진 구간 -->
						<img id="my_prophoto"
							src="profileImageView.do?id=${sessionScope.id }"
							style="margin-top: 10px;">
					</div>
					<!-- 왼쪽 사진 구간 END -->


					<div align="center"
						style="display: inline-block; vertical-align: top; margin-left: 30px;">
						<!-- 생년월일, 핸드폰, 인증번호, 사진 -->


						<!-- 생년월일 -->

						<div align="left"
							style="width: 1200px; height: 50px; margin-bottom: 30px;">
							<div class="input-group mb-3 input-group-lg inlineArr"
								style="width: 650px;">
								<div class="input-group-prepend inlineArr">
									<span class="input-group-text">생년월일</span>

								</div>
								<input type="text" id="tr_birth" name="birth"
									class="form-control" placeholder="생년월일을 입력해주세요. (ex 19991212)"
									style="width: 500px;" onblur="birthCheck(this)">
							</div>
							<h5 id="birthMsg"
								style="display: none; color: red; font-size: 20px;">안녕?</h5>


						</div>



						<!-- 핸드폰 -->
						<div align="left"
							style="width: 1200px; height: 50px; margin-bottom: 30px;">
							<div class="input-group mb-3 input-group-lg inlineArr"
								style="width: 650px;">
								<div class="input-group-prepend inlineArr">
									<span class="input-group-text">&nbsp&nbsp휴대폰&nbsp&nbsp</span>

								</div>
								<input type="text" id="tr_phone" name="p_number"
									class="form-control"
									placeholder="핸드폰 번호를 입력 해주세요 (ex 01011112222)"
									style="width: 500px;" onblur="phoneCheck(this)">
							</div>
							<h5 id="phoneMsg"
								style="display: none; color: red; font-size: 20px;">안녕?</h5>


						</div>

						<!-- 인증번호 -->



						<!-- 사진 -->
						<div align="left"
							style="width: 1200px; height: 50px; margin-bottom: 30px;">


							<div class="custom-file" style="width: 800px;">
								<input type="file" name="profile" class="custom-file-input"
									id="customFile" onchange="profileChange(this)"> <label
									class="custom-file-label" for="customFile">프로필 사진</label>
							</div>

							<script>
								// Add the following code if you want the name of the file appear on select
								$(".custom-file-input").on(
										"change",
										function() {
											var fileName = $(this).val().split(
													"\\").pop();
											$(this).siblings(
													".custom-file-label")
													.addClass("selected").html(
															fileName);
										});
							</script>

						</div>

					</div>
					<!-- 생년월일, 핸드폰, 인증번호, 사진구간 end -->
				</div>
			</div>
			<!-- 밑줄 상단 구간 END -->


			<div align="center" style="width: 1200px;">

				<!-- 밑줄 -->
				<div align="center"
					style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 50px;"></div>

				<!-- 경력사항 -->
				<div align="center">
					<div align="left" style="margin-bottom: 50px;">
						<h3 style="font-size: 20px; font-weight: 600">경력사항</h3>
					</div>
					<div align="left" style="margin-bottom: 50px;">경력 사항은 만19세 이상
						활동한 경력만 인정이 됩니다.</div>


					<div align="left" style="margin-bottom: 50px;">

						<div
							style="display: inline-block; float: left; vertical-align: top; width: 150px;">
							<select id="careerSelect" class="custom-select">
								<option selected>담당분야</option>
								<option value="요리">요리</option>
								<option value="플라워">플라워</option>
								<option value="수공예">수공예</option>
								<option value="미술">미술</option>
								<option value="액티비티">액티비티</option>
								<option value="뷰티">뷰티</option>
								<option value="음악">음악</option>
								<option value="언어">언어</option>
								<option value="방송댄스">방송댄스</option>
								<option value="웹개발">웹개발</option>

							</select>
						</div>

						<div
							style="display: inline-block; float: left; vertical-align: top; margin-left: 30px;">
							<h5>경력</h5>
						</div>

						<div
							style="display: inline-block; float: left; vertical-align: top; margin-left: 10px;">
							<input id="carrerText" type="text" name="career"
								style="width: 50px;">
						</div>

						<div
							style="display: inline-block; float: left; vertical-align: top; margin-left: 10px;">
							<h5>년</h5>

						</div>

						<div
							style="display: inline-block; float: left; vertical-align: top; margin-left: 20px;">
							<input type="button" id="careerPlus" value="+"
								onclick="carreerIN()">
						</div>

						<!-- 경력사항 입력부분END -->

						<div
							style="display: inline-block; vertical-align: top; width: 600px; margin-left: 80px;"
							align="center">

							<!-- 분야 -->
							<div id="careerCat"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
									<h5 style="font-size: 15px; font-weight: 600">분야</h5>
								</div>

								<!-- <div style="border-bottom:1px solid black; heigt:50px;">
			 				<h5 style="font-size:15px;">액티비티</h5>
			 			</div>
			 			
			 			<div style="border-bottom:1px solid black; heigt:50px;">
			 				<h5 style="font-size:15px;">액티비티</h5>
			 			</div> -->
							</div>

							<!-- 경력 -->
							<div id="careerNum"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
									<h5 style="font-size: 15px; font-weight: 600">경력</h5>
								</div>

								<!-- <div style="border-bottom:1px solid black; heigt:50px;">
			 				<h5 style="font-size:15px;">5년</h5>
			 			</div>
			 			
			 			<div style="border-bottom:1px solid black; heigt:50px;">
			 				<h5 style="font-size:15px;">5년</h5>
			 			</div> -->
							</div>

							<!-- 삭제버튼 -->
							<div id="careerDel"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
									<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
								</div>

								<!-- <div style="border-bottom:1px solid black; heigt:50px;">
			 				<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;">
			 				
			 			</div>
			 			
			 			<div style="border-bottom:1px solid black; heigt:50px;">
			 				<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;">
			 				
			 			</div> -->
							</div>
							<div id="careerHide" style="display: inline-block;"></div>
						</div>
						<!-- 경력사항 목록부분END -->

					</div>
					<!-- 경력사항 END -->

				</div>


				<!-- 계좌입력 -->
				<div align="center">
					<div align="left" style="height: 50px; margin-bottom: 50px;">
						<div align="left" style="margin-bottom: 50px;">
							<h3 style="font-size: 20px; font-weight: 600">계좌등록</h3>
						</div>
						<div class="input-group mb-3 input-group-lg "
							style="width: 100px; display: inline-block; vertical-align: top;">
							<div class="input-group-prepend"
								style="display: inline-block; vertical-align: top;">
								<span class="input-group-text">등록계좌</span>
							</div>





						</div>

						<div style="display: inline-block; vertical-align: top;">
							<input type="text" id="tr_account" name="account"
								class="form-control" style="height: 47px; width: 500px;"
								placeholder="등록할 계좌를 입력해주세요." onblur="accountCheck(this)">
						</div>

						<div
							style="width: 100px; display: inline-block; vertical-align: top; height: 80px;">
							<select name="bank" class="custom-select" style="height: 49px;">
								<option selected>은행</option>
								<option value="농협">농협</option>
								<option value="국민">국민</option>
							</select>

						</div>
						<h5 id="accountMsg" style="display: none; font-size: 20px;">안녕?</h5>


					</div>
				</div>

				<br> <br> <br>
				<!-- 문구 -->
				<div align="center" style="margin-bottom: 30px;">
					<div style="display: inline-block;">
						<h5 style="font-size: 15px;">이하 자료는 선생님들의 홍보를 위함이며 필수가 아닌</h5>
					</div>

					<div style="display: inline-block;">
						<h5 style="font-size: 15px; color: blue;">권장사항</h5>
					</div>

					<div style="display: inline-block;">
						<h5 style="font-size: 15px;">인것을 알려드립니다.</h5>
					</div>
					<!-- 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				</div>
				<br>

				<!-- 학력 -->
				<div align="center" style="margin-bottom: 50px;">
					<div align="left" style="margin-bottom: 50px;">
						<h3 style="font-size: 20px; font-weight: 600">학교/학과</h3>
					</div>
					<div align="left" class="inlineArr"
						style="width: 280px; height: 50px;">
						<div class="input-group mb-3 input-group-lg"
							style="width: 280px; margin-left: 20px;">
							<div class="input-group-prepend">
								<span class="input-group-text">학교</span>
							</div>
							<input id="schoolInput" type="text" class="form-control"
								placeholder="학교명">
						</div>

					</div>

					<div align="left" class="inlineArr"
						style="width: 250px; height: 50px; margin-left: 30px;">
						<div class="input-group mb-3 input-group-lg"
							style="width: 250px; margin-left: 1px;">
							<div class="input-group-prepend">
								<span class="input-group-text">학과</span>
							</div>
							<input id="majorInput" type="text" class="form-control"
								placeholder="학과명">
						</div>

					</div>


					<div class="inlineArr"
						style="width: 100px; height: 20px; margin-bottom: 30px;">
						<input type="button" value="+" onclick="univIN()">
					</div>

					<!-- 학교,학과 목록 -->
					<div class="inlineArr">
						<div align="left"
							style="display: inline-block; margin-bottom: 30px;">
							<!-- 학교이름 -->
							<div id="scDIV"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 120px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;"
									align="center">
									<h5 style="font-size: 15px; font-weight: 600;">학교</h5>
								</div>

								<!-- 	<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">학교</h5>
							</div>

							<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">학교</h5>
							</div> -->
							</div>

							<!-- 학과 -->
							<div id="majorDIV"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 120px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;"
									align="center">
									<h5 style="font-size: 15px; font-weight: 600">학과</h5>
								</div>

								<!-- 	<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">학과</h5>
							</div>

							<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">학과</h5>
							</div> -->
							</div>

							<!-- 삭제버튼 -->
							<div id="scDelDIV"
								style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 70px;">
								<div
									style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;"
									align="center">
									<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
								</div>

								<!-- 	<div style="border-bottom: 1px solid black; heigt: 50px;">
								<input type="button" class="btn btn-primary" value="삭제"
									style="height: 24px; font-size: 13px;">

							</div>

							<div style="border-bottom: 1px solid black; heigt: 50px;">
								<input type="button" class="btn btn-primary" value="삭제"
									style="height: 24px; font-size: 13px;">

							</div> -->
							</div>

							<div id="scHideDIV" style="display: none;"></div>
						</div>

					</div>

				</div>


				<!-- 자격증 -->

				<div align="center" style="margin-bottom: 50px;">

					<div align="left" style="margin-bottom: 50px;">
						<h3 style="font-size: 20px; font-weight: 600">자격증</h3>
					</div>
					<div align="left" class="inlineArr">
						<div class="input-group mb-3 input-group-lg" style="width: 500px;">
							<div class="input-group-prepend">
								<span class="input-group-text">자격증</span>
							</div>
							<input type="text" id="licInput" class="form-control"
								placeholder="자격증명을 입력해주세요." style="width: 280px; height: 50px;">
						</div>
					</div>

					<div align="left" class="inlineArr">
						<input type="button" id="careerPlus" value="+" onclick="licIN()"
							style="margin-left: 50px;">
					</div>


					<!-- 자격증목록 -->
					<div align="left"
						style="display: inline-block; width: 400px; height: 50px; margin-bottom: 30px;">
						<!-- 자격증이름 -->
						<div id="licDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 200px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;"
								align="center">
								<h5 style="font-size: 15px; font-weight: 600">자격증</h5>
							</div>

							<!-- 	<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">자격증</h5>
							</div>

							<div style="border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px;">자격증</h5>
							</div> -->
						</div>


						<!-- 삭제버튼 -->
						<div id="licDelDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 70px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
							</div>

							<!-- 	<div style="border-bottom: 1px solid black; heigt: 50px;">
								<input type="button" class="btn btn-primary" value="삭제"
									style="height: 24px; font-size: 13px;">

							</div>

							<div style="border-bottom: 1px solid black; heigt: 50px;">
								<input type="button" class="btn btn-primary" value="삭제"
									style="height: 24px; font-size: 13px;">

							</div> -->
						</div>

						<div id="licHideDIV" style="display: none;"></div>
					</div>

				</div>


				<div align="left"
					style="width: 1200px; height: 50px; margin-bottom: 30px;">
					<div class="input-group mb-3 input-group-lg"
						style="width: 650px; margin-left: 200px;">
						<div class="input-group-prepend">
							<span class="input-group-text">소셜미디어</span>
						</div>
						<input type="text" name="t_sns" class="form-control"
							placeholder="소셜 미디어의 주소나 아이디를 입력 해주세요">
					</div>


				</div>






				<div align="center" style="margin-bottom: 30px">
					<button type="button" class="btn btn-primary" onclick="Tc_resist()"
						style="width: 600px; height: 60px;">선생님 등록</button>
				</div>
			</div>








		</form>


	</div>

</body>
<script src="js/jquery.serializeObject.js"></script>
</html>