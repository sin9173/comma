<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script src="js/jquery.serializeObject.js" type="text/javascript"></script>

<title>Insert title here</title>

</head>

<script type="text/javascript">
	function delBtn(me) {

		var index = $(me).parent().parent().index();

		$("#tableAdd tr").eq(index).remove();

	}
	
	function delBtn2(me) {

		var index = $(me).parent().parent().index();

		$("#tableAdd2 tr").eq(index).remove();

	}
	

	$(document).ready(function() {

		
				$('#registBtn').click(function() {

					$("#roadAddrPart1Hidden").val($("#roadAddrPart1").val())
// 					var params = $('#classForm').serialize();
					var params = $('#classForm').serializeObject();

						$.ajax({
							type : "post",
							url : "classResistBtn.do",
// 							
							contentType:"application/json; charset=UTF-8",
							data : JSON.stringify(params),
							
							dataType : "json",
							success : function(resultStr) {
								
							if(resultStr.result =="1"){
								alert("dddd")
							}	
							if(resultStr.result =="3"){
								alert("d")
							}	
							if(resultStr.result =="4"){
								alert("dd")
							}	
							if(resultStr.result =="5"){
								alert("ddddddd")
							}	
								
							if(resultStr.result == "6") {
								alert("클래스 등록됨");
								
								var form = new FormData(document.getElementById("classForm"));
								$.ajax({
									url:"classFileUpload.do",
									cache: false,
									data: form,
									dataType: 'text',
									processData: false,
									contentType: false,
									type: 'POST',
									success: function(response){
										alert("등록되었습니다.");
										
										location.href="mypage.do";
									},
									error: function(jqXHR, error){
										alert('error : ' + error);
									}
								});
								
								
							}else{
								return;
							}
							
							

						},
						error : function(xhrReq, status, error) {

								alert("실패!");
						console.log(xhrReq+ ' / '+ status+ ' / '+ error);
						}
						})

						})

						$("#addBtn").click(function() {

											var time = $("#time").val()
											var hour = $("#hour").val()

											var year = $("#year").val()
											var month = $("#month").val()
											var day = $("#day").val()

											var uni1 = year + "-" + month + "-"
													+ day
											var uni2 = time + ":" + hour

											var tr = $("<tr>")
											var td1 = $("<td><input readonly='readonly' type='text' value='"+uni1+"' name='c_startday'></td>")

											var td2 = $("<td><input readonly='readonly' type='text' value='"+uni2+"' name='c_starttime'></td>")

											var btn = $("<td><input type='button' id='delBtn1' value='삭제' onclick='delBtn(this)' ></td>")

											tr.append(td1).append(td2).append(btn);
											$("#tableAdd").append(tr);

					})
					
					var imgnum = 1;
					$("#addImage").click(function () {
						
						
						var image = $("#image").val();
						var tr = $("<tr>")
						var td1 = $("<td><input type='file' name='c_image"+imgnum+"'></td>")
						
						imgnum = imgnum + 1;
						

						var btn = $("<td><input type='button' id='delBtn1' value='삭제' onclick='delBtn2(this)' ></td>")
						tr.append(td1).append(btn)
						$("#tableAdd2").append(tr);
						
					})
					
					
})

function goPopup() {
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("joosoApi.do", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn,
			bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm,
			rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadAddrPart1.value = roadAddrPart1;
// 		document.form.addrDetail.value = addrDetail;
// 		document.form.zipNo.value = zipNo;
	}


</script>

<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div align="center">
		<div align="left" style="width: 1200px">
			<div align="center" style="margin-top: 50px">
				<h2 align="center">클래스 등록/수정</h2>
				<div align="center"
					style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 15px;"></div>
			</div>
			
			
						
			
	</div>
	
	
	
	
	
	
			<form name="form" id="form" method="post" style="width: 700px;">
			
			<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">주소</span>
							</div>
							<input type="hidden" id="confmKey" name="confmKey" value=""  >
							<input type="text" id="roadAddrPart1" readonly class="form-control"
								placeholder="주소를 입력해주세요">
								<input type="button"  value="주소검색" onclick="goPopup();">
						</div>
						
				
					   		
		
			</form>

			
			<form action="classResistBtn.do" id="classForm" enctype="multipart/form-data" accept-charset="UTF-8">
				<div align="center" style="margin-top: 50px;">
					<div id="inputinput">
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업이름</span>
							</div>
							<input type="text" name="c_name" class="form-control"
								placeholder="수업이름을 입력해 주세요">
						</div>

						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">카테고리</span>
							</div>

							<select class="form-control" id="sel1" name="c_category">
								<option>카테고리</option>
								<option value="요리">요리</option>
								<option value="수공예">수공예</option>
								<option value="미술">미술</option>
								<option value="액티비티">액티비티</option>
								<option value="뷰티">뷰티</option>
								<option value="음악">음악</option>
								<option value="언어">언어</option>
								<option value="웹개발">웹개발</option>
								<option value="기타등등">기타등등</option>
							</select>
						</div>
						<br> <br> <br> <br> <br>

<!-- 						<input type="text" name="c_image" value="사진"> -->
						
						<input type="button" id="addImage" value="추가"> <br>
						<div>
							<table border="1" id="tableAdd2">
								<tr>
									<th width="300">파일</th>
									

									<th>삭제</th>
								</tr>

 								
							</table>
						</div>

						<br> <br>


						<div class="form-group">
							<label for="comment">수업내용을 입력해주세요</label>
							<textarea class="form-control" name="c_content" rows="5"
								id="comment"></textarea>
						</div>

						<br> <br>
						<div class="input-group mb-3 input-group-lg">
							<div class="input-group-prepend">
								<span class="input-group-text">수업가격</span>
							</div>

							<input type="text" name="c_price" class="form-control"
								placeholder="수업가격을 입력해 주세요">
						</div>
						<br> <br>
<!-- 						<div style="width: 500px;"> -->
<!-- 							<div class="input-group-prepend" -->
<!-- 								style="display: inline-block; float: left;"> -->
<!-- 								<span class="input-group-text">위치</span> -->
<!-- 							</div> -->

<!-- 							<div style="display: inline-block; float: left; width: 100px;"> -->
<!-- 								<select name="province" class="custom-select"> -->
<!-- 									<option selected>도</option> -->
<!-- 									<option value="spec">특별시</option> -->
<!-- 									<option value="geonggi">경기도</option> -->
<!-- 									<option value="geongsangbuk">경상북도</option> -->
<!-- 									<option value="geongsangnam">경상남도</option> -->
<!-- 									<option value="chungcheongbuk">충청북도</option> -->
<!-- 									<option value="chungcheongnam">충청남도</option> -->
<!-- 									<option value="jeonlabuk">전라북도</option> -->
<!-- 									<option value="jeonlanam">전라남도</option> -->
<!-- 									<option value="jeju">제주도</option> -->


<!-- 								</select> -->
<!-- 							</div> -->

<!-- 							<div style="display: inline-block; float: left; width: 100px;"> -->
<!-- 								<select name="city" class="custom-select"> -->
<!-- 									<option selected>시</option> -->
<!-- 									<option value="seoul">서울시</option> -->

<!-- 								</select> -->
<!-- 							</div> -->

<!-- 							<div style="display: inline-block; float: left; width: 100px;"> -->
<!-- 								<select name="gu" class="custom-select"> -->
<!-- 									<option selected>구</option> -->
<!-- 									<option value="jonglo">종로</option> -->

<!-- 								</select> -->
<!-- 							</div> -->
<!-- 						</div> -->


						<br> <br> <br>
						<div align="center">
							<div style="display: inline-block">
								<h4 style="font-size: 20px; font-weight: 550;">정규/</h4>
							</div>
							<div style="display: inline-block">
								<h4 style="font-size: 20px; font-weight: 550;">원데이</h4>
							</div>
						</div>

						<!-- 						<div align="center"> -->
						<!-- 							<div style="display:inline-block;" > -->
						<!-- 								<input type="checkbox" style="width:30px; height:30px;" name="regular"> -->
						<!-- 							</div> -->
						<!-- 							<div style="display:inline-block; margin-left:10px;"> -->
						<!-- 								<input type="checkbox" style="width:30px; height:30px;" name="oneday"> -->
						<!-- 							</div> -->
						<!-- 						</div> -->

						<div class="form-check-inline">
							<label class="form-check-label" for="radio1"> <input
								type="radio" class="form-check-input" id="radio1" name="c_type"
								value="1" checked>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label" for="radio2"> <input
								type="radio" class="form-check-input" id="radio2" name="c_type"
								value="2">
							</label>
						</div>
						<br> <br>
						<div align="center" style="width: 500px; margin-left: 100px;">

							<div style="display: inline-block; float: left;">
								<h4 style="font-size: 20px; font-weight: 550;">수업날짜</h4>
							</div>


							<div style="display: inline-block; float: left;">
								<select name="year" id="year" class="custom-select"
									style="width: 100px;">

									<option value="2019">2019년</option>
									<option value="2020">2020년</option>


								</select>
							</div>

							<div style="display: inline-block; float: left;">
								<select name="month" id="month" class="custom-select"
									style="width: 100px;">

									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>

								</select> <br> <br>
							</div>

							<div style="display: inline-block; float: left;">
								<select name="day" id="day" class="custom-select"
									style="width: 100px;">

									<option value="1">1일</option>
									<option value="2">2일</option>
									<option value="3">3일</option>
									<option value="4">4일</option>
									<option value="5">5일</option>
									<option value="6">6일</option>
									<option value="7">7일</option>
									<option value="8">8일</option>
									<option value="9">9일</option>
									<option value="10">10일</option>
									<option value="11">11일</option>
									<option value="12">12일</option>
									<option value="13">13일</option>
									<option value="14">14일</option>
									<option value="15">15일</option>
									<option value="16">16일</option>
									<option value="17">17일</option>
									<option value="18">18일</option>
									<option value="19">19일</option>
									<option value="20">20일</option>
									<option value="21">21일</option>
									<option value="22">22일</option>
									<option value="23">23일</option>
									<option value="24">24일</option>
									<option value="25">25일</option>
									<option value="26">26일</option>
									<option value="27">27일</option>
									<option value="28">28일</option>
									<option value="29">29일</option>
									<option value="30">30일</option>
									<option value="31">31일</option>


								</select>
							</div>


						</div>
						<br> <br> <br> <br>

						<div style="width: 400px;">
							<div
								style="display: inline-block; float: left; margin-left: 40px;">
								<h4 style="font-size: 20px; font-weight: 550;">수업시간</h4>
							</div>

							<div style="display: inline-block; float: left;">
								<select name="time" id="time" class="custom-select"
									style="width: 100px;">

									<option value="오전">오전</option>
									<option value="오후">오후</option>

								</select>

							</div>


							<div style="display: inline-block; float: left;">
								<select name="hour" id="hour" class="custom-select"
									style="width: 100px;">
									<option value="1시">01시</option>
									<option value="2시">02시</option>
									<option value="3시">03시</option>
									<option value="4시">04시</option>
									<option value="5시">05시</option>
									<option value="6시">06시</option>
									<option value="7시">07시</option>
									<option value="8시">08시</option>
									<option value="9시">09시</option>
									<option value="10시">10시</option>
									<option value="11시">11시</option>
									<option value="12시">12시</option>


								</select>


							</div>
							<br> <br> <br>
							<!-- 				<div> -->
							<!-- 				<div style="display:inline-block; float:left;"> -->
							<!-- 					<h4 style="font-size:20px; font-weight:550;">회차</h4> -->
							<!-- 				</div> -->


							<!-- 				<div style="display:inline-block; float:left;"> -->
							<!-- 					<select name="repeat" id="repeat" class="custom-select" style="width: 100px;"> -->
							<!-- 						<option selected>-</option> -->
							<!-- 						<option value="1">1회차</option> -->
							<!-- 						<option value="2">2회차</option> -->
							<!-- 						<option value="3">3회차</option> -->


							<!-- 					</select> -->
							<!-- 				</div> -->

							<!-- 				<div style="display:inline-block; float:left; margin-left:50px;"> -->
							<!-- 					<h4 style="font-size:20px; font-weight:550;">수업주기</h4> -->
							<!-- 				</div> -->


							<!-- 				<div style="display:inline-block; float:left;"> -->
							<!-- 					<select name="term" id="term" class="custom-select" style="width: 100px;"> -->
							<!-- 						<option selected>-</option> -->
							<!-- 						<option value="1">1일</option> -->
							<!-- 						<option value="2">2일</option> -->
							<!-- 						<option value="3">3일</option> -->
							<!-- 						<option value="4">4일</option> -->
							<!-- 						<option value="5">5일</option> -->
							<!-- 						<option value="6">6일</option> -->
							<!-- 						<option value="7">7일</option> -->



							<!-- 					</select> -->
							<!-- 				</div> -->



							<!-- 				</div> -->

							<input type="button" id="addBtn" value="추가"> <br>
							<div align="center">

								<table border="1" id="tableAdd">

									<tr>

										<th width="150">날짜</th>

										<th width="150">시간</th>

										<th>삭제</th>
									</tr>




								</table>
							</div>

							<br> <br>

							<div style="width: 400px;">
								<div
									style="display: inline-block; float: left; margin-left: 50px;">
									<h4 style="font-size: 20px; font-weight: 550;">진행시간</h4>
								</div>

								<div style="display: inline-block; float: left;">
									<select name="c_classtime" class="custom-select"
										style="width: 100px;">

										<option value="1">01시간</option>
										<option value="2">02시간</option>
										<option value="3">03시간</option>


									</select>

								</div>

								<br> <br> <br>

								<div
									style="display: inline-block; float: left; margin-left: 50px;">
									<h4 style="font-size: 20px; font-weight: 550;">최대인원수</h4>
								</div>

								<div style="display: inline-block; float: left;">
									<select name="c_member" class="custom-select" style="width: 100px;">

										<option value="1">01명</option>
										<option value="2">02명</option>
										<option value="3">03명</option>
										<option value="4">04명</option>
										<option value="5">05명</option>
										<option value="6">06명</option>
										<option value="7">07명</option>
										<option value="8">08명</option>
										<option value="9">09명</option>
										<option value="10">10명</option>
										<option value="11">11명</option>
										<option value="12">12명</option>
										<option value="13">13명</option>
										<option value="14">14명</option>
										<option value="15">15명</option>
										<option value="16">16명</option>
										<option value="17">17명</option>
										<option value="18">18명</option>
										<option value="19">19명</option>
										<option value="20">20명</option>

									</select>

								</div>
							</div>
						</div>


						<br> <br> <br> <br>
						<div style="margin-bottom: 20px;">
							<button type="button" id="registBtn" class="btn btn-outline-secondary">클래스 등록</button>
						</div>

						<input type="hidden" id="zipNoHidden" value="">
						<input type="hidden" name="c_location" id="roadAddrPart1Hidden" value="">
						<input type="hidden" id="addrDetailHidden" value="">


					</div>
				</div>

			</form>
			
			
			
			
		</div>
	</div>
	</div>
</body>
<script src="js/jquery.serializeObject.js" type="text/javascript"></script>
</html>