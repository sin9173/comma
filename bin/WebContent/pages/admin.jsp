<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/cssconfig.css">
<title>Insert title here</title>

<meta charset="UTF-8">



</head>
<script src="js/approve.js" type="text/javascript"></script>
<script src="js/teacher_function.js" type="text/javascript"></script>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/t_profile.jsp"></jsp:include>
	
	
	<div align="center">
		<div align="left" style="width: 1200px">
			<div align="center" style="margin-top: 50px">

				<h2>관리자 마이페이지</h2>
			</div>

			<div align="center"
				style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 15px;"></div>
		</div>


		<div align="center">
			<div align="left" style="width: 1200px">
				

				<div align="center" style="margin-top: 50px; height: 600px;">

					<div align="left" style="width: 1200px; margin-bottom: 15px;">
						<h4>선생님 승인</h4>
					</div>

					<div id="approve_Containter1" class="ad_body" style="overflow:auto; float: left;">
						
						<c:forEach var="a" items="${acceptList }">
							<div id="approveCard" style="width:390px; height:100px; margin-top:10px; background-color:#FFCCFF;" onclick="t_profile_open('${a.id}')">
							<div id="chApprove" style="width:30px; height:100px; display:inline-block; float:left;">
								<input type="checkbox" style="width:25px; height:25px; margin-top:30px;">
							</div>
							
							<div style="width:100px; height:100px; display:inline-block; float:left;">
								<img src="profileImageView.do?id=${a.id }" id="my_prophoto" style="width:90px; height:90px;">
							</div>
							
							<div align="left" style="width:250px; height:100px; display:inline-block; float:left;">
								<h5>[이름]${a.name }</h5>
								<h5>[이메일]${a.email }</h5>
								<h5>[연락처]${a.p_number }</h5>
							</div>
							
							<div id="approveInfo" style="display:none";>
								<h5>${a.id }</h5>
							</div>
						</div>
						</c:forEach>
					</div>

					<div style="width: 200px; height: 500px; float: left;">
						<button type="button" class="btn btn-outline-secondary"
							style="margin-top: 100px;" onclick="tc_res()">등록 →</button>
						<br>
						<button type="button" class="btn btn-outline-secondary"
							style="margin-top: 100px;" onclick="tc_cancel()">←취소</button>
							
						<br>
						<button type="button" class="btn btn-outline-secondary"
							style="margin-top: 100px;" onclick="tc_approve()">결정</button>	
					</div>


					<div id="approve_Containter2" class="ad_body" style="float: left;">b</div>
				</div>

			</div>
		</div>
	</div>







</body>





</html>