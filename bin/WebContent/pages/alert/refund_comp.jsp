<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="../css/cssConfig.css?ver=1">
</head>
<body>
	<div class="dim"></div>
	<div align="center" class="popup" id="s_warning">
		<!--닫기창  -->
		<div align="center">
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="join_form_close()">
		</div>
		<!-- 제목창 -->
		<div style="margin-top: 30px;">
			<h1>환불 완료</h1>
		</div>
		<!-- 결제된 클래스 정보 -->
		<!-- 클래스 이미지 -->
		<div align="center">
			<img src="../img/cat.jpg" style="width: 250px; height: 250px">
		</div>
		<div style="height: 150px; margin-top: 30px">

			<!-- 선생님 사진 부분 -->
			<div>
				<div style="display: inline-block; float: left;">
					<img src="../img/cat.jpg" class="rounded-circle" alt="Cinque Terre"
						align="left" style="height: 80px; width: 80px; margin-left: 30px;">
						<div style="margin-left: 30px;"> 
						강사이름
						</div>
				</div>
				<!-- 선생님 소개부분 -->
				<div style="display: inline-block; float: left;">
					<div style="height: 150px; width: 200px; margin-left: 30px;">
						<h4 style="text-align: left">클래스이름</h4>
						<pre style="text-align: left">클래스 정보
제목과
일시 ,별점,금액
결제 방식등을
DB에서 뿌려주는 부분 입니다</pre>
					</div>

				</div>
			</div>
		</div>




	</div>



</body>
</html>

