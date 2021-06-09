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
		<div align="center" class="popup_small" id="drop_member">
			<div align="center">
				<img src="img/close.png" class="closeimg" id="close_btn"
					onclick="drop_member_close()">
			</div>
			<div style="margin-top: 50px;">
				<h4>탈퇴</h4>

			</div>
			<div style="margin-top: 30px;">
				현재 로그인된 아이디를
				<br>
				탈퇴 하시겠습니까?

			</div>
			
			<div>
				<button type="button" style="margin-top: 50px;"
					class="btn btn-outline-secondary" id="del_btn"
					onclick="drop_member_ajax('${sessionScope.id}')">탈퇴</button>

			</div>


		</div>
	</div>

</body>
</html>