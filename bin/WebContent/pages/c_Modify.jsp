<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="css/cssconfig.css">
<title>Insert title here</title>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<div align="left" style="width: 1200px">
			<div align="center" style="margin-top: 50px">
				<h2 align="center">클래스 등록/수정</h2>
				<div align="center"
					style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 15px;"></div>
			</div>


			<form action="classModify.do">
				<div align="center" style="margin-top: 50px;">
					<div id="inputinput">
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업이름</span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업이름을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">카테고리</span>
							</div>

							<select class="form-control" id="sel1" name="sellist1">
								<option>카테고리를 설정해주세요</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text"> 사진  </span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업과 관련된 사진을 올려주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업소개</span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업소개를 간단히 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업내용</span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업내용을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업가격</span>
							</div>
							<input type="text" class="form-control"
								placeholder="수업가격을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">상세주소</span>
							</div>
							<input type="text" class="form-control"
								placeholder="상세주소를 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<label class="form-check-label" for="radio1"> <input
								type="radio" class="form-check-input" id="radio1"
								name="optradio" value="option1" checked>정규
							</label>
						</div>
						<div class="input-group mb-3 input-group-lg" >
							<label class="form-check-label" for="radio2"> <input
								type="radio" class="form-check-input" id="radio2"
								name="optradio" value="option2" >원데이
							</label>
						</div>

						<div style="margin-bottom: 20px;">
							<label>날짜선택<br> <input type="date">
							</label>
						</div>

						<div style="margin-bottom: 20px;">
							<label>시간<br> <input type="time">
							</label>

						</div>


						<div style="margin-bottom: 20px;">
							<label>인원수 선택<br> 최소:<input type="number">
								최대:<input type="text">

							</label>

						</div>


						<div style="margin-bottom: 20px;">
							<button type="submit" class="btn btn-outline-secondary">클래스
								등록</button>
						</div>



					</div>
				</div>

			</form>
		</div>
	</div>
	</div>
</body>
</html>