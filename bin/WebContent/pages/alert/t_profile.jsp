<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div align="center" class="popup_wide" id="t_profile">
		<!--닫기창  -->
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="t_profile_close()">
		</div>
		<!-- 제목창 -->
		<div>
			<h1 style="margin-top: 20px;">선생님 프로필</h1>
		</div>

		<!-- 프로필 부분 -->
		<div>
			<!-- 사진과 이름 소개부분 -->
			<div style="height: 150px;">
				<!-- 선생님 사진 부분 -->
				<div id="tp_img" style="display: inline-block; float: left;">
					<img src="img/cat.jpg" class="rounded-circle" alt="Cinque Terre" align="left"
						style="height: 150px; width: 150px; margin-left: 100px;">
				</div>
				<!-- 선생님 소개부분 -->
				<div style="display: inline-block; float: left;">
					<div style="height: 150px; width: 400px; margin-left: 40px;">
					
						<div id="tp_name" align="left">
							<h3 style="text-align: left">선생님이름</h3>
						</div>
						<div id="tp_email" align="left">
							<h5></h5>
						</div>
						
						<div id="tp_gender" align="left">
							<h5></h5>
						</div>
						
						<div id="tp_phone" align="left">
							<h5></h5>
						</div>
						
					</div>
			
				</div>
			</div>
			<!-- 상세 소개 내용 -->
			<div>
			<hr style="width: 600px;">
			</div>
			<div style="margin-left: 100px; height: 200px;">
				<h3 style="text-align: left">상세 자격정보</h3>
				<div id="tp_career" align="left">
				
					<h5></h5>
				</div>
				
				<div id="tp_education" align="left">
					<h5></h5>
				</div>
				<div id="tp_license" align="left">
					<h5></h5>
				</div>
				
				<div id="tp_sns" align="left">
					<h5></h5>
				</div>
			</div>
		</div>


































	</div>
</body>
</html>