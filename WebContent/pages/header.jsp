<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쉼표</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 로드 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- JQuery로드 -->
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous">
	
</script>
<!-- CSS로드 -->
<link rel="stylesheet" type="text/css" href="css/cssconfig.css">

<!-- JavaScript로드-->

<script src="js/studentUpdate.js" type="text/javascript"></script>

<script src="js/loginForm.js" type="text/javascript">
	
</script>
<script src="js/confirm.js" type="text/javascript">
	
</script>
<script src="js/teacher_function.js" type="text/javascript">
	
</script>
<script type="text/javascript"></script>

<script src="js/member.js" type="text/javascript"></script>

<script src="js/request.js" type="text/javascript">
   
</script>
<script src="js/question.js" type="text/javascript">
   
</script>
<script src="js/reviewForm.js" type="text/javascript">
   
</script>
<script src="js/notice.js" type="text/javascript">
   
</script>

<script src="js/teacher_function.js" type="text/javascript"></script>
<!-- 네이버 로그인 -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		
		modeSwitch("<%=(String) session.getAttribute("mode")%>");

		var log = false;
		$('#joinid').blur(function() {
			$.ajax({
				type : 'post',
				url : 'idCheck.do',
				data : 'id=' + $('#joinid').val(), // 보낼 데이터
				dataType : 'json', // 받아오는 데이터 타입
				success : function(resultStr) {
					// console.log(resultStr.result);

					if (resultStr.result) {

						log = false;
						$('#idok').html('중복');
					} else {
						log = true;

						$('#idok').html('사용가능');
					}
				},
				error : function(xhrReq, status, error) {
					console.log(xhrReq + ' / ' + status + ' / ' + error);
					// alert("에러");
				}

			})
		})

		$('#joinBtn').click(function() {

			var params = $('#inForm').serialize();
			if (log) {

				$.ajax({
					type : "post",
					url : "join.do",
					data : params,
					dataType : "json",
					success : function(resultStr) {

						if (resultStr.result) {
							log = false;

							alert("가입성공!");
							join_form_close();
						} else
							alert("안놉");

					},
					error : function(xhrReq, status, error) {
						console.log(xhrReq + ' / ' + status + ' / ' + error);
					}
				})

			} else
				alert("밖놉")

		})

	})
</script>


</head>
<body>

	<div class="dim"></div>
	<div align="center">
		<jsp:include page="alert/notice_write.jsp"></jsp:include>
		<div align="right" id="high_menu">

			<c:choose>
				<c:when test="${empty sessionScope.id}">
					<input type="button" class="btn btn-outline-secondary" value="회원가입"
						id="join_btn" style="float: right; margin-left: 7px;"
						onclick="join_form()">

					<input type="button" class="btn btn-outline-secondary" value="로그인"
						id="login_btn" style="float: right; margin-left: 7px;"
						onclick="login_form()">
				</c:when>

				<c:when test="${sessionScope.state==1 }">


					<input type="button" class="btn btn-outline-secondary"
						value="선생님등록" id="t_res_btn"
						style="float: right; margin-left: 7px;"
						onclick="location.href='t_ResistForm.do'">
					<input type="button" class="btn btn-outline-secondary" value="로그아웃"
						id="logout_btn" style="float: right; margin-left: 7px;"
						onclick="location.href='logout.do'">
					 <input
								type="button" class="btn btn-light" id="modify_info" value="탈퇴"
								onclick="drop_member_open(${id})">
				</c:when>

				<c:when test="${sessionScope.state==2 }">


					<input type="button" class="btn btn-light" id="modify_info" value="탈퇴" style="float:right;"
								onclick="drop_member_open(${id})">
					<input type="button" class="btn btn-outline-secondary" value="로그아웃"
						id="logout_btn" style="float: right; margin-left: 7px;"
						onclick="location.href='logout.do'">
					<div class="custom-control custom-switch"
						style="float: right; margin-left: 7px;">
						

						<input type="checkbox" class="custom-control-input" id="tSwitch"
							style="float: left;" onclick="modeChange(this)"> <label
							class="custom-control-label" for="tSwitch">선생님모드ON</label>

					</div>

				</c:when>


				<c:when test="${sessionScope.state==3 }">
					<input type="button" class="btn btn-outline-secondary" value="로그아웃"
						id="logout_btn" style="float: right; margin-left: 7px;"
						onclick="location.href='logout.do'">
					<input type="button" class="btn btn-outline-secondary"
						value="공지사항작성" id="n_res_btn"
						style="float: right; margin-left: 7px;"
						onclick="notice_write_open()"> `
			
			</c:when>
			</c:choose>








		</div>

		<br>
		<div align="center" style="width: 1200px;">

			<img src="img/로고.JPG" style="width: 120px; height: 120px;" id="logo"
				onclick="location.href='mainForm.do'"> <br> <br>


			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4>
								<a class="nav-link" href="classListForm.do">class</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4>
								<a class="nav-link" href="classReqList.do">class요청</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4>
								<a class="nav-link" href="reviewList.do">review</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4>
								<a class="nav-link" id="centroBtn" href="notice.do">고객센터</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4>
								<a class="nav-link" href="mypage.do">my page</a>
							</h4>
						</li>
					</ul>
				</div>
			</nav>

		</div>
	</div>


	<!-- --------회원가입------------- -->
	<!--   회원가입 창 html -->
	<form action="join.do" method="post" id="inForm">
		<div align="center">

			<div align="center" class="popup" id="join_form">
				<div style="margin-top: 20px">


					<div align="center" style="margin-bottom: 30px;">
						<h2>쉼표 학생 회원가입</h2>
					</div>

					<div>
						<img src="img/close.png" class="closeimg" id="close_btn"
							onclick="join_form_close()">
					</div>

					<div>
						<input type="text" name="name" placeholder=" Name" class="text_1">
					</div>
					<div>
						<div style="font-size: 12px">아이디는 이메일 형식으로 입력 할수 없습니다</div>
						<div align="left" style="margin-left: 100px;">
							<input type="text" id="joinid" name="id" placeholder=" ID"
								class="text_1" onblur="emailCheck(this)"> <span
								id="idok" style="margin-left: 5px;">중복여부</span>
						</div>
						<div>

							<h5 id="id_emailMsg"
								style="display: none; color: red; font-size: 11px;">안녕?</h5>
						</div>
					</div>

					<!-- 		<div>
						<input type="text" name="email" placeholder=" Email"
							class="text_1" onblur="st_emailCheck(this)">
							<h5 id="st_emailMsg"
							style="display: none; color: red; font-size: 10px;">안녕?</h5>
					</div> -->

					<div style="margin-bottom: 1px;">

						<div>
							<input type="text"
								style="border-radius: 3px; width: 200px; height: 30px; margin-bottom: 1px;"
								id="st_email" name="email" placeholder="E-mail"
								onblur="st_emailCheck(this)">
						</div>
						<div>

							<h5 id="st_emailMsg"
								style="display: none; color: red; font-size: 11px;">안녕?</h5>
						</div>
					</div>
					<div>
						<input type="password" name="password" placeholder=" Password"
							class="text_1">

					</div>
					<div>
						<input type="password" name="passwordCheck"
							placeholder=" Password check" class="text_1">
					</div>

					<div>
						<input type="radio" name="gender" value="man"> 남자 <input
							type="radio" name="gender" value="woman">여자
					</div>
					<pre style="font-size: 12px; height: 55px;"> 본 회원가입은 쉼의 학생으로 가입되는것입니다.
쉼의 선생님 가입을 원할경우 학생 가입후
 마이페이지에서 선생님 가입을 해주세요.</pre>
					<div>
						<input type="button" id="joinBtn"
							class="btn btn-outline-secondary"
							style="width: 200px; margin-bottom: 10px;" value="가입하기">

					</div>

					<div style="font-size: 15px;">이미 원데이 클래스 회원이세요?</div>
					<div>
						<a style="font-size: 15px; color: blue" onclick="open_close_2()">로그인</a>

					</div>
				</div>
			</div>


		</div>
	</form>
	<!-- --------로그인------------- -->

	<form action="login.do">

		<div align="center">

			<div align="center" class="popup" id="login_form">
				<div style="margin-top: 20px">


					<div align="center" style="margin-bottom: 50px;">
						<h2>쉼표 학생 로그인</h2>
					</div>

					<div>
						<img src="img/close.png" class="closeimg" id="close_btn"
							onclick="login_form_close()">
					</div>


					<div>
						<input type="text" name="id" placeholder=" ID" class="text_1">
					</div>

					<div>
						<input type="password" name="password" placeholder=" Password"
							class="text_1">
					</div>

					<div>
						<button type="submit" class="btn btn-outline-secondary"
							style="width: 200px; margin-bottom: 10px; margin-top: 50px">로그인</button>

					</div>
					<div>
						<div id="naver_id_login" onclick="login_form_close()"></div>

						<script type="text/javascript">
							var naver_id_login = new naver_id_login(
									"ASwJs8HU_hFZHXu7ZiBr",
									"http://localhost:8080/comma/pages/naver_login_callback.jsp");
							var state = naver_id_login.getUniqState();
							naver_id_login.setButton("white", 2, 50);
							naver_id_login
									.setDomain("http://localhost:8080/comma/mainForm.do");
							naver_id_login.setState(state);
							naver_id_login.setPopup();
							naver_id_login.init_naver_id_login();
						</script>

					</div>
					<div>
						<button type="submit" class="btn btn-outline-secondary"
							style="width: 200px; margin-bottom: 10px">구글로 로그인 하기</button>

					</div>
					<div style="font-size: 15px; margin-top: 30px;">아직 원데이 클래스
						회원이 아니세요?</div>
					<div>
						<a style="font-size: 15px; color: blue" onclick="open_close_1()">회원가입</a>

					</div>



				</div>
			</div>


		</div>
	</form>
</body>
</html>