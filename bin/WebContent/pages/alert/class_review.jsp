<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<div align="center" class="popup_wide" id="class_review">
			<!--닫기창  -->
			<div>
				<img src="img/close.png" class="closeimg" id="close_btn"
					onclick="class_review_close()">
			</div>
			<div align="center" style="margin-top: 20px;">
				<h1>리뷰 남기기</h1>
			</div>
			<!-- 별점칸 -->
			<div
				style="width: 600px; height: 150px; background: grey; margin-top: 10px; border-radius: 15px;">
				<div align="center">
					<div style="width: 500px;" align="center">
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-left: 140px; margin-top: 20px;">
							<input type="radio"> ☆☆☆☆☆
						</div>
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-top: 20px;">
							<input type="radio"> ★☆☆☆☆
						</div>
					</div>
					<br>
					<div style="width: 500px;" align="center">
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-left: 140px; margin-top: 20px;">
							<input type="radio"> ★★☆☆☆
						</div>
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-top: 20px;">
							<input type="radio"> ★★★☆☆
						</div>
					</div>
					<br>
					<div style="width: 500px;" align="center">
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-left: 140px; margin-top: 20px;">
							<input type="radio"> ★★★★☆
						</div>
						<div
							style="display: inline-block; float: left; margin-right: 10px; margin-top: 20px;">
							<input type="radio"> ★★★★★
						</div>
					</div>


				</div>






			</div>

			<!-- 네용입력 -->
			<div class="form-group">

				<textarea class="form-control" rows="5" placeholder="내용을 입력 해주세요."
					style="margin-top: 20px; width: 600px; height: 150px"></textarea>
			</div>
			<!--  등록버튼-->
			<div>
				<button type="submit" class="btn btn-outline-secondary"
					style="margin-top: 20px;" onclick="review_write_ajax('content')">등록</button>
			</div>
		</div>
	</div>
</body>
</html>