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
	<div align="center" class="popup_small" id="t_req_accept">
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="join_form_close()">
		</div>
		<div style="margin-top: 80px;">
			<h4> 결제 실패</h4>
		</div>
		<div style="margin-top: 30px;">
		문제가 발생하여 결제에 실패 하였습니다.
		<br>
		 다시 결제를 진행해주시기 바랍니다.
		
		</div>


	</div>

</body>
</html>