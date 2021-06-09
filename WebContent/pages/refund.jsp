<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div align="center">
		<div align="left" style="width: 1200px">
			<div align="center" style="margin-top: 50px">
				<h2>환불 페이지</h2>
				<div align="left" style="margin-top: 50px">
					<table>
						<tr>
							<td rowspan="2">

								<div>
									<h3>클래스 정보</h3>
									<img src="img/공방1.jpg" style="width: 350px; height: 350px">

								</div>
							</td>
							<td>
								<div
									style="margin-left: 50px; display: inline-block; float: left;"
									align="center">
									<img src="img/공방1.jpg" class="rounded-circle"
										alt="Cinque Terre" style="width: 100px; height: 100px;">
									<pre>사용자</pre>

								</div>
							</td>
							<td>
								<div style="margin-left: 50px;">

									<pre>DB에서 받아올 내용들</pre>


								</div>
							</td>
						</tr>
						<tr>

							<td colspan="2">

								<div style="margin-left: 50px">

									<pre>횐불할 클래스 날짜 :DB 에서 선택된 날짜</pre>

								</div>


							</td>
						</tr>

					</table>
					<div align="center"
						style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 50px; margin-top: 50px">

					</div>

					<div>
						<h3>쉼표 클래스 환불 정책 안내</h3>
						<br> <br>
						<pre>천재지변, 인사사고 등의 이유로 인한 환불이 아닌 단순변심에 의한 환불일 경우 아래의 환불규정이 적용됩니다.  
해당 클래스 시작 7일 전 =  총 수강료의 100%
해당 클래스 시작 5일 전 =  총 수강료의 70%
해당 클래스 시작 3일 전 =  총 수강료의 30%
해당 클래스 시작 당일    =  환불 불가</pre>
					</div>
					<div align="center"
						style="border-bottom: 1px solid #555; width: 1200px; margin-bottom: 50px; margin-top: 50px">

					</div>
					<div align="center">
						<table>

							<tr>
								<td>
									<div style="margin-left: 15px">
										<h5>환불 받을실 계좌번호</h5>
									</div>
								</td>
								<td>
									<div class="dropdown inlineArr" style="margin-left: 15px">
										<button type="button" class="btn btn-primary dropdown-toggle"
											data-toggle="dropdown" style="background-color: grey;">은행선택</button>
										<div class="dropdown-menu">
											<a class="dropdown-item" href="#">신한은행</a> <a
												class="dropdown-item" href="#">NH농협은행</a> <a
												class="dropdown-item" href="#">우리은행</a> <a
												class="dropdown-item" href="#">하나은행</a> <a
												class="dropdown-item" href="#">IBK기업은행</a> <a
												class="dropdown-item" href="#">KB국민은행</a> <a
												class="dropdown-item" href="#">CITI한국씨티은행</a> <a
												class="dropdown-item" href="#">대구은행</a> <a
												class="dropdown-item" href="#">광주은행</a> <a
												class="dropdown-item" href="#">제주은행</a> <a
												class="dropdown-item" href="#">전북은행</a> <a
												class="dropdown-item" href="#">수협중앙회</a>

										</div>
									</div>
								</td>
								<td>
									<div style="margin-left: 15px">
										<input type="text" style="width: 350px; border-radius: 5px"
											placeholder=" -을 제외한 계좌번호를 입력해주세요">
									</div>
								</td>
								<td>
									<div style="margin-left: 15px">

										<button type="button" class="btn btn-outline-secondary">등록</button>

									</div>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<div align="center" style="margin-top: 50px">
										<input type="checkbox" style="height: 25px; width: 25px;">
										<h4 style="display: inline-block;">회원 본인은 환불정책을 충분히 읽고
											숙지하였으며, 이에 동의 합니다.</h4>
									</div>

								</td>
							</tr>
							<tr>
								<td colspan="4">
									<div  align="center" style="margin-top: 50px">

										<button type="button" class="btn btn-outline-secondary" style="width: 200px">환불
											하기</button>


									</div>
								</td>
							</tr>


						</table>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>