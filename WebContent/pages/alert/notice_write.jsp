<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	
	<div align="center" class="popup_wide" id="notice_write">
		<!--닫기창  -->
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="notice_write_close()">
		</div>
		<!-- 제목창 -->
		<div style="margin-top: 30px;">
			<h1>공지사항 작성</h1>
		</div>

		<div align="center" style="height: 130px;">
			<hr width="600px;">
			<div style="margin-left: 50px; margin-top: 40px;" align="left">

				<input type="text" id="n_title"
					style="border-radius: 3px; width: 400px; height: 40px;"
					placeholder="  제목을 입력 해주세요.">
			</div>

		</div>

		<div class="form-group">
			<textarea class="form-control" rows="5" id="n_content"
				style="width: 600px; height: 200px;" placeholder="  내용을 입력 해주세요."></textarea>
		</div>
		<div>
			<button type="submit" class="btn btn-outline-secondary" onclick="notice_write_ajax('<%=session.getAttribute("id") %>')">공지사항
				작성</button>

		</div>

	</div>
</body>
</html>