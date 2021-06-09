<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="reviewWrite.do" enctype="multipart/form-data"
		method="post">
		<div align="center" class="popup_wide" id="pReview_write">
			<!--닫기창  -->
			<div>
				<img src="img/close.png" class="closeimg" id="close_btn"
					onclick="pReview_write_close()">
			</div>
			<!-- 제목창 -->
			<div style="margin-top: 30px;">
				<h1>사진 리뷰 작성</h1>
			</div>
			<div align="center">
				<hr width="600px;">
				<div style="height: 160px; margin-top: 20px; margin-bottom: 20px;">

					<div class="inlineArr" align="left">
						<div class="custom-file"
							style="width: 400px; margin-left: 50px; margin-top: 40px;">
							<input type="file" name="reviewImage" class="custom-file-input"
								id="customFile" onchange="reviewfileChange(this)"> <label
								class="custom-file-label" for="customFile">사진을 선택해주세요.</label>
						</div>
						
						<div align="center">
							<input type="text" name="title" placeholder="제목을 입력해주세요." maxlength="20" style="width:400px; margin-top:50px; margin-left:50px;">
						</div>
					</div>
					<div class="inlineArr" align="left" style="margin-left: 20px;">
						<!-- 왼쪽 사진 구간 -->
						<img id="review_photo" style="height: 150px; width: 150px;">
					</div>
					<script>
						// Add the following code if you want the name of the file appear on select
						$(".custom-file-input").on(
								"change",
								function() {
									var fileName = $(this).val().split("\\")
											.pop();
									$(this).siblings(".custom-file-label")
											.addClass("selected")
											.html(fileName);
								});
					</script>

				</div>


			</div>

			<div class="form-group">
				<textarea class="form-control" rows="5" name="content"
					style="width: 600px; height: 150px;" placeholder="내용을 입력 해주세요."></textarea>
			</div>
			<div>
				<button type="submit" class="btn btn-outline-secondary">리뷰
					작성</button>

			</div>

		</div>


	</form>

</body>
</html>