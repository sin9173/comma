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

<script src="js/calandar.js" type="text/javascript"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
		var date = new Date();
		
		$("#myT_phonenumber").text(phoneFormat($("#myT_phonenumber").text()));
		calandar_view(date.getFullYear(), date.getMonth()+1);
		
		<c:forEach var="v" items="${rList}">
			sc_add('${v.c_startday}일','${v.c_starttime}','${v.c_name}' )
		
		</c:forEach>
	});
	
	
	function calandar_update(){
		
		var year = $("#myT_Year").val();
		var month = $("#myT_Month").val();
		
		calandar_view(year, month);
		
		<c:forEach var="v" items="${rList}">
			sc_add('${v.c_startday}일','${v.c_starttime}','${v.c_name}' )

		</c:forEach>
	}

</script>

<style>
.mypageT_resisclass_btn {
	margin-left: 10px;
	width: 80px;
	height: 25px;
}
</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/delete_alert.jsp"></jsp:include>
	<jsp:include page="alert/req_delete.jsp"></jsp:include>
	<jsp:include page="alert/dropMember.jsp"></jsp:include>



	<br>
	<div align="center">

		<div align=left style="width: 1200px;">

			<table>


				<tr height="250">
					<td width="300">
						<div align="center" style="width: 300px; height: 250px;">
							<img id="my_prophoto" src="profileImageView.do?id=${sessionScope.id }" width="200" height="200">
						</div>

					</td>


					<td width="700" style="vertical-align: top;">
						<div style="vertical-align: midle; height: 180px;">
							<h5>${info.name }</h5>
							<h5>${info.email }</h5>
							<h5 id="myT_phonenumber">${info.p_number }</h5>
						</div>


						<div id="memberButtons"
							style="vertical-align: midle; height: 40px;">
							<input type="button" class="btn btn-light" id="modify_info"
								value="경력사항변경" onclick="location.href='changeInfo_tForm.do'">
							<input type="button" class="btn btn-light" id="modify_info"
								value="실시간톡" onclick="location.href='talk.do'">
							<input type="button" class="btn btn-light" id="modify_info"
								value="클래스 등록" onclick="location.href='classResist.do'">
							<input type="button" class="btn btn-light"
								id="modify_info" value="정보변경"
								onclick="location.href='changeInfo_sForm.do'">
						</div>
					</td>
				</tr>

			</table>


			<nav id="nav" class="navbar navbar-expand-sm bg-light navbar-light">

				<div class="menu" align="center"
					style="border-bottom: 1px solid #555; width: 1200px;">
					<ul id="myt_nav" class="navbar-nav" style="display: inline-block;">
						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">
								<a href="#t_nav1" style="color: grey;">등록된 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">
								<a href="#t_nav2" style="color: grey;">수업 완료된 클래스</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">
								<a href="#t_nav3" style="color: grey;">클래스별 리뷰</a>
							</h4>
						</li>

						<li class="nav-item">
							<h4 style="color: #666666; font-weight: 600; font-size: 20px;">
								<a href="#t_nav4" style="color: grey;">요청 클래스</a>
							</h4>
						</li>

					</ul>
				</div>
			</nav>

			<br>
			<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="t_nav1">등록된클래스</h3>
			<br>
			<c:forEach var="i" items="${rList }" begin="0" end="4">
			<div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					${i.c_name } (${i.c_startday } 개설/ 원데이/ ${i.c_price}원)<br>
				</div>
				<div class=inlineArr>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'">
						<h6 style="font-size: 13px;">내용수정</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="del_conf('t_class_del','${c_number}')">
						<h6 style="font-size: 13px;">수업삭제</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'">
						<h6 style="font-size: 13px;">학생목록</h6>
					</button>
				</div>
			</div>
			<br> <br>
			
			</c:forEach>


			<%-- <div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위 한 다쿠아즈 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br>
				</div>
				<div class="inlineArr">
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'">
						<h6 style="font-size: 13px;">내용수정</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="del_conf('t_class_del','${c_name}')">
						<h6 style="font-size: 13px;">수업삭제</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'">
						<h6 style="font-size: 13px;">학생목록</h6>
					</button>
				</div>
			</div>





			<br> <br>
			<div align="left">
				<div class=inlineArr>
					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위한 케익 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br>
				</div>
				<div class="inlineArr">
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'">
						<h6 style="font-size: 13px;">내용수정</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="del_conf('t_class_del','${c_name}')">
						<h6 style="font-size: 13px;">수업삭제</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'">
						<h6 style="font-size: 13px;">학생현황</h6>
					</button>
				</div>

			</div>

			<br> <br>
			<div align="left">
				<div class=inlineArr>

					<input type="checkbox"
						style="width: 20px; height: 20px; vertical-align: top; margin-bottom: 15px;">
					너만을 위한 쿠키 만들기 (2019-10-22 개설/ 원데이/ 30,000원)

				</div>
				<div class="inlineArr">
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='classModify.do'">
						<h6 style="font-size: 13px;">내용수정</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="del_conf('t_class_del','${c_name}')">
						<h6 style="font-size: 13px;">수업삭제</h6>
					</button>
					<button type="submit"
						class="btn btn-outline-secondary mypageT_resisclass_btn"
						onclick="location.href='enroll.do'">
						<h6 style="font-size: 13px;">학생현황</h6>
					</button>
				</div>

			</div>



			<br> <br> --%>

			<div align="right"></div>
			<br>
			
			<div style="width:100px; display:inline-block; vertical-align:top; height:80px;">
                    <select id="myT_Year" name="Year" class="custom-select" style="height:49px;">
						<option selected>2019</option>
						<option value="2019">2019</option>
						<option value="2020">2020</option>
					</select>
					
			</div>
			
			<div style="width:100px; display:inline-block; vertical-align:top; height:80px;">
                    <select id="myT_Month" name="Month" class="custom-select" style="height:49px;">
						<option selected>12</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					
			</div>
			
			<input type="button" class="btn btn-success" value="일정보기" onclick="calandar_update()">
			<div align="center">
				<table id="myT_table" border="1">
					<tr>
						<!-- tr1 -->
						<th>
							<!-- td1 --> 일
						</th>

						<th>
							<!-- td2 --> 월
						</th>

						<th>
							<!-- td3 --> 화
						</th>

						<th>
							<!-- td4 --> 수
						</th>

						<th>
							<!-- td5 --> 목
						</th>

						<th>
							<!-- td6 --> 금
						</th>

						<th>
							<!-- td7 --> 토
						</th>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>

					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>


					<tr>
						<!-- tr1 -->
						<td>
							<!-- td1 -->
						</td>

						<td>
							<!-- td2 -->
						</td>

						<td>
							<!-- td3 -->
						</td>

						<td>
							<!-- td4 -->
						</td>

						<td>
							<!-- td5 -->
						</td>

						<td>
							<!-- td6 -->
						</td>

						<td>
							<!-- td7 -->
						</td>
					</tr>
				</table>

			</div>
			<br> <br>
			<div align="center">
				<div align="left"
					style="border-top: 1px solid black; border-bottom: 1px solid black; width: 1000px;">

					<h4 style="margin-top: 20px; font-size: 25px; font-weight: 700;" id="t_nav2">수업
						완료된 클래스</h4>

					<br>


					<div style="height: 130px; width: 300px;">


						<div id="myT_student"
							style="width: 300px; height: 130px; display: inline-float; float: left;">
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 마카롱 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 다쿠아즈 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 쿠키 클래스</h6>
							</div>
							<div onclick="location.href='moveToDeclaration.do'">
								<h6>너만을 위한 케익 클래스</h6>
							</div>


						</div>


					</div>


				</div>

				<br>
				<div align="left" id="myT_review"
					style="border-bottom: 1px solid black; width: 1000px;">
					<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px;" id="t_nav3">클래스
						별 리뷰</h3>

					<br> <input type="checkbox"> 너만을 위한 마카롱 만들기
					(2019-10-22 개설/ 원데이/ 30,000원)<br> <input type="checkbox">
					너만을 위한 마카롱 만들기 (2019-10-22 개설/ 원데이/ 30,000원)<br> <input
						type="checkbox"> 너만을 위한 마카롱 만들기 (2019-10-22 개설/ 원데이/
					30,000원)<br> <input type="checkbox"> 너만을 위한 마카롱 만들기
					(2019-10-22 개설/ 원데이/ 30,000원)<br> <br>

					<table id="myT_reviewTable">
						<tr>
							<td align="center">
								<div align="left"
									style="border: 1px solid black; height: 100px; width: 400px;">
									<h5>[너만을 위한 마카롱 만들기]</h5>
									<h5>너무재미있었어요, 강사님도 너무 좋았고 재미있었습니다!!!</h5>
									<h5>등록 : 2019-10-22</h5>
								</div>
							</td>

							<td align="center">
								<div align="left"
									style="border: 1px solid black; height: 100px; width: 400px;">
									<h5>[너만을 위한 마카롱 만들기]</h5>
									<h5>너무재미있었어요, 강사님도 너무 좋았고 재미있었습니다!!!^^</h5>
									<h5>등록 : 2019-10-22</h5>
								</div>
							</td>
						</tr>
					</table>
				</div>

				<div align="left" style="width: 1000px;">
					<br>
					<h3 style="font-weight: 800; font-size: 25px; margin-left: 22px; display:inline-block;" id="t_nav4">요청클래스</h3>
					<h4 style="font-weight: 600; font-size: 17px; display:inline-block; float:right;" onclick="location.href='myTRequestList.do?teacher=${sessionScope.id}'">더보기>></h4>
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px;">
						<h4 style="font-weight: 600; font-size: 17px;">검토중</h4>
					</div>
					
				<c:forEach var="r" items="${myTRequest }" begin="0" end="1">

					<c:choose>
					
					<c:when test="${r.r_status==2 }">
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center" style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="profileImageView.do?id=${r.id}"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">${r.id }</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[분야]/[${r.c_category }]</h5>
								<h5 style="font-size: 15px;">[요청사항] ${r.c_title } ${r.number }</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span> <span> ${r.c_location } </span> <span style="float: right;"> <input
									type="button" value="신청철회" onclick="class_req_retract('${r.number}')">
								</span>
							</div>
						</div>
						<br>
					</div>
					</c:when>
					</c:choose>
			</c:forEach>


					<br>
					

					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px;">
						<h4 style="font-weight: 600; font-size: 17px;">수락완료</h4>
					</div>

				<c:forEach var="r" items="${myTRequest }" begin="0" end="1">

					<c:choose>
					
					<c:when test="${r.r_status==3 }">
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 450px; height: 120px; display: inline-block; float: left;">

						<div align="center" style="display: inline-block; float: left; vertical-align: center;">
							<img class="myT_stphoto" src="profileImageView.do?id=${r.id}"
								style="width: 70px; height: 70px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">${r.id }</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px;">
							<div>
								<h5 style="font-size: 15px;">[분야]/[${r.c_category }]</h5>
								<h5 style="font-size: 15px;">[요청사항] ${r.c_title } ${r.number }</h5>
							</div>

							<div style="margin-top: 10px;">
								<span> <img src="img/위치.png"
									style="width: 30px; height: 30px;">
								</span>
								
								<span> ${r.c_location } </span>
							</div>
						</div>
						<br>
					</div>
					</c:when>
					</c:choose>
			</c:forEach>
				</div>
			</div>
			<br>





		</div>
	</div>
</body>


<script src="js/calandar.js" type="text/javascript"></script>
</html>