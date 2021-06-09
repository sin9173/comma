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

<script>
$(document).ready(function(){
	$('#btn').on('click',function(){
		alert("ffff");
		$(".popup").show();
		$(".dim").show();
	})
	
})


</script> 
<body>
	<div>
	<input type="button" id="btn" value="가입하기">
	
	</div>

		<div class="dim"></div>
		<!--   회원가입 창 html -->
		<div align="center">

			<div align="center" class="popup">

				<table>
					<tr>
						<td>

							<div align="center">
								<h2>쉼표 학생 회원가입</h2>
							</div>
						</td>
						<td>
							<div style="margin-left: 30px">
								<img src="../img/close.png" class="closeimg">
							</div>
						</td>
					</tr>
				</table>
				<div>
					<input type="text" placeholder=" Name" class="text_1">
				</div>
				<div style="font-size: 12px">아이디는 이메일 형식으로 입력 할수 없습니다</div>
				<div>
					<input type="text" placeholder=" ID" class="text_1">
				</div>
				<div>
					<input type="text" placeholder=" Email" class="text_1">
				</div>
				<div>
					<input type="text" placeholder=" Password" class="text_1">
				</div>
				<div>
					<input type="text" placeholder=" Password check" class="text_1">
				</div>
				<pre> 본 회원가입은 쉼의 학생으로 가입되는것입니다.
쉼의 선생님 가입을 원할경우 학생 가입후
 마이페이지에서 선생님 가입을 해주세요
			</pre>
				<div>
					<button type="submit" value="가입하기">가입하기</button>

				</div>

			</div>

		</div>

</body>
</html>