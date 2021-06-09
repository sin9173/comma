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

<link rel="stylesheet" type="text/css" href="../css/cssConfig.css">

</head>
<body>
	<div class="dim"></div>
	
	<div align="center" class="popup_small" id="not_t">
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="join_form_close()">
		</div>
		<div style="margin-top: 100px;">
			<h4>아직 쉼표 선생님이 아니시군요!</h4>
		</div>

		<div>
			<button type="submit" style="margin-top: 50px;" class="btn btn-outline-secondary"onclick=""> 선생님  등록하기</button>

		</div>


	</div>

</body>
</html>