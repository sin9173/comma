<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>

	<div align="center" class="popup_small" id="req_delete">
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="class_req_retract_close()">
		</div>
		<div style="margin-top: 50px;">
			<h4>신청 철회</h4>
		</div>
		<div style="margin-top: 30px;">
		요청한 클래스에 대한 
		<br>
		선생님 신청을 철회하시겠습니까?
		<br>
		 철회뒤에는 수정이 불가능 합니다.
		
		</div>

		<div>
			<button type="submit" style="margin-top: 50px;" class="btn btn-outline-secondary"onclick="class_req_retract_ajax()">철회</button>

		</div>


	</div>

</body>
</html>