<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div align="center" class="popup_wide" id="s_warning">
		<!--닫기창  -->
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="declaration_s_close()">
		</div>
		<!-- 제목창 -->
		<div style="margin-top: 20px;">
			<h1>학생 신고</h1>
		</div>
		<!-- 프로필 부분 -->
		<div>
			<!-- 사진과 이름  정보 -->
			<div style="height: 150px;">
				<!-- 학생 사진 부분 -->
				<div style="display: inline-block; float: left;">
					<img src="img/cat.jpg" class="rounded-circle" alt="Cinque Terre" align="left"
						style="height: 150px; width: 150px; margin-left: 100px;">
				</div>
				<!-- 신고 학생 정보 -->
				<div style="display: inline-block; float: left;">
					<div style="height: 150px; width: 400px; margin-left: 40px;">
						<h3 style="text-align: left">학생이름</h3>
						<pre style="text-align: left">학생
정보와
해당 학생이
들었던 클래스(신고 하려는 선생님꺼 )의제목과
일시를
DB에서 뿌려주는 부분 입니다</pre>
					</div>

				</div>
			</div>
			<!-- 신고 내용 작성 -->
			<div>
				<hr style="width: 600px;">
			</div>
			
				<div class="form-group" style="margin-top: 30px;">
					<textarea class="form-control" rows="5" id="s_warning_text" style="width: 600px; height: 150px;" placeholder="  신고 내용을 입력해주세요. "></textarea>
				</div>
		<div>
		<button type="submit"  class="btn btn-outline-secondary" onclick="declaration_ajax(id)">신고하기</button>
		</div>
		</div>






	</div>


</body>
</html>

