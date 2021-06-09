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
<link rel="stylesheet" type="text/css" href="../css/cssConfig.css?ver=1">
<body>

	<div class="dim"></div>
	<div align="center">
		<div align="center" class="popup_wide" id="local_search">


			<div style="margin-top: 50px; margin-bottom: 50px;">
				<div>
					<img src="img/close.png" class="closeimg" id="close_btn"
						onclick="join_form_close()">
				</div>
				<input type="text" placeholder=" 검색어를 입력해주세요"
					style="width: 500px; height: 50px; border-radius: 3px;">
				<button type="submit">검색</button>
			</div>
			<hr width="600px">
			<div style="width: 600px; margin-bottom: 40px;" align="center">
				<div
					style="display: inline-block; float: left; margin-right: 170px; margin-left: 40px">
					No.</div>

				<div
					style="display: inline-block; float: left; margin-right: 170px;">
					도로명 주소</div>

				<div style="display: inline-block; float: left;">우편번호</div>

			</div>
			<hr width="600px">
			<div style="border: 1px solid black; width: 600px; height: 250px;">



			</div>

		</div>





	</div>

</body>
</html>