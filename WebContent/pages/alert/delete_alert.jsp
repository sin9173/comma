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
		<div align="center" class="popup_small" id="delete_alert">
			<div align="center">
				<img src="img/close.png" class="closeimg" id="close_btn"
					onclick="del_conf_close()">
			</div>
			<div style="margin-top: 50px;">
				<h4>삭제</h4>

			</div>
			<div style="margin-top: 30px;">
				삭제하시면 복구 할수 없습니다! <br> 삭제 하시겠습니까?

			</div>
			
			<div>
				<button type="button" style="margin-top: 50px;"
					class="btn btn-outline-secondary" id="del_btn"
					onclick="delete_ajax()">삭제</button>

			</div>


		</div>
	</div>

</body>
</html>