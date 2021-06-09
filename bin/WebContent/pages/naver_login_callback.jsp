<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>

<body>
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("ASwJs8HU_hFZHXu7ZiBr",
				"http://localhost:8080/comma/pages/naver_login_callback.jsp");
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		function naverSignInCallback() {
			var c_email = naver_id_login.getProfileData('email');
			var c_name = naver_id_login.getProfileData('name');
			var c_gender = naver_id_login.getProfileData('gender');

			$.ajax({
				type : 'post',
				dataType : 'json',
				url : '../naver_login_chk.do',
				data : {
					'email' : c_email,
					'name' : c_name,
					'gender' : c_gender
				},
				success : function(data) {
					if (data.result == "1") {
						alert("네이버 아이디로 로그인 성공!")
						window.close();
						location.href="../mainForm.do";

					}
				},
				error : function() {
					console.log("ajax 실패")
				}
			});

		}
	</script>
</body>
</html>