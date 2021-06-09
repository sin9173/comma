<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
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

<script src="js/jquery.serializeObject.js"></script>
<script src="js/teacherResist.js" type="text/javascript"></script>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="margin-top: 50px;">
	<h2 align="center">선생님 정보 변경</h2>
	</div>
	<br>


	<form id="TmodifyForm" action="changeInfo_t.do" enctype="multipart/form-data">
		<div align="center">
			<div align="left" style="width: 1200px">
				<div align="center" style="margin-top: 50px">




					<!--  -->
					<!-- 경력사항 -->
					<div align="center">
						<div align="center" style="margin-bottom: 50px; width: 600px;">
							<div align="left">
								<h3 style="font-size: 20px; font-weight: 600">경력사항</h3>
							</div>

							<div style="display: inline-block; vertical-align: top;">
								<div
									style="display: inline-block; float: left; vertical-align: top; margin-left: 50px;">
									<h5>담당분야:</h5>
								</div>

								<div
									style="display: inline-block; float: left; vertical-align: top; width: 200px; margin-left: 10px;">
									<select id="careerSelect" class="custom-select">
										<option selected>분야를 선택해주세요.</option>
										<option value="요리">요리</option>
										<option value="플라워">플라워</option>
										<option value="수공예">수공예</option>
										<option value="미술">미술</option>
										<option value="액티비티">액티비티</option>
										<option value="뷰티">뷰티</option>
										<option value="음악">음악</option>
										<option value="언어">언어</option>
										<option value="방송댄스">방송댄스</option>
										<option value="웹개발">웹개발</option>

									</select>
								</div>

								<div
									style="display: inline-block; float: left; vertical-align: top; margin-left: 50px;">
									<h5>경력:</h5>
								</div>

								<div
									style="display: inline-block; float: left; vertical-align: top; width: 50px; margin-left: 10px;">
									<input id="carrerText" type="text" name="career"
										style="width: 50px;">
								</div>

								<div
									style="display: inline-block; float: left; vertical-align: top; width: 20px; margin-left: 10px;">
									<h5>년</h5>

								</div>

								<div
									style="display: inline-block; float: left; vertical-align: top; width: 20px; margin-left: 20px;">
									<input type="button" id="careerPlus" value="+"
										onclick="carreerIN()">
								</div>
							</div>
						</div>
						<!-- 경력사항 입력부분END -->
						<div align="center">
							<div
								style="display: inline-block; vertical-align: top;  margin-left: 30px;">

								<!-- 분야 -->
								<div id="careerCat"
									style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
									<div
										style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
										<h5 style="font-size: 15px; font-weight: 600">분야</h5>
									</div>
									
									<c:forEach var="c" items="${careerList }">

									<div style="border-bottom:1px solid black; heigt:50px;">
			 							<h5 style="font-size:15px;">${c.cat }</h5>
			 						</div>
			 			
			 			
			 						</c:forEach>
								</div>

								<!-- 경력 -->
								<div id="careerNum"
									style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
									<div
										style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
										<h5 style="font-size: 15px; font-weight: 600">경력</h5>
									</div>

									<c:forEach var="c" items="${careerList }">

									<div style="border-bottom:1px solid black; heigt:50px;">
			 							<h5 style="font-size:15px;">${c.car }</h5>
			 						</div>
			 			
			 			
			 						</c:forEach>
								</div>

								<!-- 삭제버튼 -->
								<div id="careerDel"
									style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 150px;">
									
									<div
										style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
										<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
									</div>

									<c:forEach var="c" items="${careerList }">
										<div style="border-bottom:1px solid black; heigt:50px;">
											<input type="button" id="delCareerBtn" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="carreerOUT(this)">
										</div>
									
									</c:forEach>
								</div>
								<div id="careerHide" style="display: inline-block;">
									<c:forEach var="c" items="${careerList }">
										<div style="display:none">
											<input style='display:none' type='hide' name='t_careerObject' value="${c.cat }:${c.car}">
											
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<!-- 경력사항 목록부분END -->

					</div>
					<!-- 경력사항 END -->



					<br> <br>

					<!-- 문구 -->
					<div align="center">
						<div style="display: inline-block;">
							<h5 style="font-size: 15px;">이하 자료는 선생님들의 홍보를 위함이며 필수가 아닌</h5>
						</div>

						<div style="display: inline-block;">
							<h5 style="font-size: 15px; color: blue;">권장사항</h5>
						</div>

						<div style="display: inline-block;">
							<h5 style="font-size: 15px;">인것을 알려드립니다.</h5>
						</div>
						<!-- 						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
					</div>
					<br>

					<!-- 학력 -->
					<div align="center">
						<div align="center"
							style="display: inline-block; width: 280px; height: 50px; margin-bottom: 30px; margin-right: 30px;">
							<div class="input-group mb-3 input-group-lg"
								style="width: 280px; margin-left: 20px;">
								<div class="input-group-prepend">
									<span class="input-group-text">학교</span>
								</div>
								<input id="schoolInput" type="text" class="form-control"
									placeholder="학교명">
							</div>

						</div>


						<div align="left"
							style="display: inline-block; width: 250px; height: 50px; margin-bottom: 30px;">
							<div class="input-group mb-3 input-group-lg"
								style="width: 250px; margin-left: 1px;">
								<div class="input-group-prepend">
									<span class="input-group-text">학과</span>
								</div>
								<input id="majorInput" type="text" class="form-control"
									placeholder="학과명">
							</div>

						</div>

						<div
							style="display: inline-block; width: 100px; height: 20px; margin-bottom: 30px;">
							<input type="button" value="+" onclick="univIN()">
						</div>
					</div>
					<!-- 학교,학과 목록 -->
					<div align="center" style="display: inline-block;">
						<!-- 학교이름 -->
						<div id="scDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 120px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px; text-align: center;">
								<h5 style="font-size: 15px; font-weight: 600">학교</h5>
							</div>

							<c:forEach var="e" items="${eduList }">
							<div style="border-bottom:1px solid black; heigt:50px;">
			 					<h5 style="font-size:15px;">${e.edu }</h5>
			 				</div>
			 				</c:forEach>
			 			
						</div>

						<!-- 학과 -->
						<div id="majorDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 120px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px; text-align: center;">
								<h5 style="font-size: 15px; font-weight: 600">학과</h5>
							</div>

							<c:forEach var="e" items="${eduList }">
							<div style="border-bottom:1px solid black; heigt:50px;">
			 					<h5 style="font-size:15px;">${e.part }</h5>
			 				</div>
			 				</c:forEach>
						</div>

						<!-- 삭제버튼 -->
						<div id="scDelDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 120px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px; text-align: center;">
								<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
							</div>
							
							<c:forEach var="e" items="${eduList }">
								<div style="border-bottom:1px solid black; heigt:50px;"> 
									<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="univOUT(this)">
								</div>
							
							</c:forEach>
						</div>

						<div id="scHideDIV" style="display: none;">
							<c:forEach var="e" items="${eduList }">
								<div style="display:none">
									<input style='display:none' type='hide' name='t_educationObject' value="${e.edu }:${e.part}">
								</div>
								
							</c:forEach>
						</div>

					</div>


					<!-- 자격증 -->
					<div align="center" style="margin-top: 30px;">
						<div align="center"
							style="display: inline-block; width: 500px; height: 50px; margin-bottom: 30px; margin-top: 30px;">
							<div class="input-group mb-3 input-group-lg"
								style="width: 500px;">
								<div class="input-group-prepend">
									<span class="input-group-text">자격증</span>
								</div>
								<input type="text" id="licInput" class="form-control"
									placeholder="자격증명을 입력해주세요.">
							</div>


						</div>

						<div
							style="display: inline-block; width: 100px; height: 20px; margin-bottom: 50px;">
							<input type="button" value="+" onclick="licIN()">
						</div>
					</div>
					<!-- 자격증목록 -->
					<div align="center"
						style="display: inline-block; argin-bottom: 30px;">
						<!-- 자격증이름 -->
						<div id="licDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 250px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px; font-weight: 600">자격증</h5>
							</div>

							<c:forEach var="l" items="${licList }">
							<div style="border-bottom:1px solid black; heigt:50px;">
			 					<h5 style="font-size:15px;">${l.lic }</h5>
			 				</div>
			 				</c:forEach>
			 			
						</div>


						<!-- 삭제버튼 -->
						<div id="licDelDIV"
							style="display: inline-block; border-top: 2px solid black; border-bottom: 1px solid black; float: left; vertical-align: top; width: 100px;">
							<div
								style="background: #CCCCCC; border-bottom: 1px solid black; heigt: 50px;">
								<h5 style="font-size: 15px; font-weight: 600">삭제</h5>
							</div>
							
							<c:forEach var="l" items="${licList }">
							<div style="border-bottom:1px solid black; heigt:50px;"> 
								<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="licOUT(this)">
							</div>
							
							</c:forEach>
						</div>

						<div id="licHideDIV" style="display: none;">
							<c:forEach var="l" items="${licList }">
								<div style="display:none">
									<input style='display:none' type='hide' name='t_licenseObject' value='${l.lic }'>
								</div>
							</c:forEach>
						</div>
					</div>

					<div align="left"
						style="width: 1200px; height: 50px; margin-bottom: 30px; margin-top: 30px;">
						<div class="input-group mb-3 input-group-lg"
							style="width: 650px; margin-left: 200px;">
							<div class="input-group-prepend">
								<span class="input-group-text">소셜미디어</span>
							</div>
							<input type="text" name="t_sns" class="form-control" value="${t_sns }"
								placeholder="소셜 미디어의 주소나 아이디를 입력 해주세요">
						</div>


					</div>

				</div>


				<div align="center" style="margin-top: 50px; margin-bottom: 50px;">
					<input type="button" class="btn btn-outline-secondary" value="변경하기" onclick="tc_modify()">
				</div>
			</div>
		</div>

	</form>
</body>
<script src="js/teacherResist.js" type="text/javascript"></script>
<script src="js/jquery.serializeObject.js"></script>
</html>