<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<script src="js/teacherResist.js" type="text/javascript"></script>

<script src="js/studentUpdate.js" type="text/javascript"></script>


<body>

	<jsp:include page="header.jsp"></jsp:include>


	<h2 align="center" style="margin-top: 50px;">학생 정보 변경</h2>
	<br>


	<form action="changeInfo_s.do" enctype="multipart/form-data"
		method="post">
		<div align="center">
			<div align="left" style="width: 1200px">
				<div align="center" style="margin-top: 50px">


					<div>
						<div class="inlineArr" style="margin-bottom: 50px;">
							<!-- 왼쪽 사진 구간 -->
							<img id="my_prophoto"
								src="profileImageView.do?id=${sessionScope.id }"
								style="margin-top: 10px;">
						</div>
						<div class="inlineArr" align="left">
							<div class="custom-file"
								style="width: 800px; margin-left: 50px; margin-top: 100px;">
								<input type="file" name="profile" class="custom-file-input"
									id="customFile" onchange="profileChange(this)"> <label
									class="custom-file-label" for="customFile">프로필 사진을 선택
									해주세요.</label>
							</div>
						</div>

						<script>
							// Add the following code if you want the name of the file appear on select
							$(".custom-file-input").on(
									"change",
									function() {
										var fileName = $(this).val()
												.split("\\").pop();
										$(this).siblings(".custom-file-label")
												.addClass("selected").html(
														fileName);
									});
						</script>

					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">이메일</span>
						</div>
						<input type="text" class="form-control" id="st_email" name="email"
							placeholder="이메일을 입력해 주세요" value="${info.email}" onblur="st_emailCheck(this)">
							<h5 id="st_emailMsg"
							style="display: none; color: red; font-size: 20px;">안녕?</h5>
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">핸드폰</span>
						</div>
						<input type="text" class="form-control" id="st_phone"
							name="p_number" placeholder="핸드폰 번호를 입력해 주세요.(ex01011112222)"
							value="${info.p_number}" onblur="st_phoneCheck(this)">
						<h5 id="st_phoneMsg"
							style="display: none; color: red; font-size: 20px;">안녕?</h5>
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">비밀번호</span>
						</div>
						<input type="text" class="form-control" name="password"
							placeholder="비밀번호를 입력해 주세요">
					</div>

					<div class="input-group mb-3 input-group-lg">
						<div class="input-group-prepend">
							<span class="input-group-text">비빌번호 확인</span>
						</div>
						<input type="text" class="form-control" name="passwordCheck"
							placeholder="비밀번호를 다 시 입력해 주세요" id="pw">
					</div>


				</div>


				<div style="margin-top: 50px; margin-bottom: 50px;" align="center">
					<button type="submit" class="btn btn-outline-secondary"
						>변경 하기</button>
				</div>

			</div>
		</div>





	</form>


</body>
</html>