<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

	<div align="center" class="popup_small" id="t_req_accept">
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="t_accept_close()">
		</div>
		<div style="margin-top: 50px;">
			<h4>선생님 수락</h4>
		</div>
		<div style="margin-top: 30px;">
		수락하시면 변경 할수 없습니다!
		<br>
		 선생님을 수락 하시겠습니까?
		
		</div>

		<div>
			<button type="submit" style="margin-top: 50px;" class="btn btn-outline-secondary"
			onclick="t_accept_ajax('id')">수락</button>
<!-- 선생님아이디를 가지고 간다 -->
		</div>


	</div>

</body>
</html>