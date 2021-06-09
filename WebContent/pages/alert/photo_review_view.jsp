<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="ReadReview.do" enctype="multipart/form-data"
		method="post">

		<div align="center" class="popup_wide" id="pReview_view">
			<!--닫기창  -->
			<div>
				<img src="img/close.png" class="closeimg" id="close_btn"
					onclick="pReview_view_close()">
			</div>


			<div>
				<!-- 게시사진 공간 -->
				<div id="rev_ImgVw" style="display: inline-block; float: left;">
					<img src="img/cat.jpg" style="width: 400px; height: 500px;">


				</div>
				<!-- 게시글 공간 -->

				<div align="center">
					<!-- 사용자 사진 -->
					<table>
						<tr>
							<td>
								<div id="rev_proImgVw">
									<img src="img/cat.jpg" class="rounded-circle"
										alt="Cinque Terre" align="left"
										style="height: 80px; width: 80px; margin-left: 10px; margin-top: 50px;">

								</div>
							</td>
							<td><div id="rev_IdVw" style="margin-top: 30px;">사용자 이름</div></td>
						</tr>
						<tr>
							<td colspan="2">
								<hr width="250px;">
								<div id="rev_ConVw">DB에서 꺼내온 내용</div>
							</td>
						</tr>

					</table>


				</div>

			</div>

		</div>
	</form>

</body>
</html>

