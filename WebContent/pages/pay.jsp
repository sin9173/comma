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
				<h2 style="font-weight: 900">결제페이지</h2>
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
									style="margin-left: 100px; display: inline-block; float: left;"
									align="center">
									<img src="img/공방1.jpg" class="rounded-circle"
										alt="Cinque Terre" style="width: 100px; height: 100px;">
									<pre>사용자</pre>
								</div>
							</td>
							<td>
								<div style="margin-left: 40px;" class="inlineArr">
									<pre style="width: 300px"> 
내용
									</pre>
								</div>

								<div class="dropdown inlineArr">
									<button type="button" class="btn btn-primary dropdown-toggle"
										data-toggle="dropdown" style="background-color: grey;">클래스
										수강 날짜 선택</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="#">2019-11-01</a> <a
											class="dropdown-item" href="#">2019-11-02</a> <a
											class="dropdown-item" href="#">2019-11-03</a>
									</div>
								</div>
							</td>


						</tr>
						<tr>
							<td colspan="2">
								<div style="margin-left: 50px">
									<input type="text"
										style="width: 700px; height: 150px; border-radius: 10px"
										placeholder="수업에  관련됭 질문 또는 요구사항을 입력 해주세요">


								</div>
							</td>
						</tr>


					</table>

				</div>

			</div>

			<div align="center" style="margin-top: 50px">
				<input type="checkbox" style="height: 25px; width: 25px;">
				<h4 style="display: inline-block;">회원 본인은 결제정책을 충분히 읽고 숙지하였으며,
					이에 동의 합니다.</h4>

			</div>
			<div align="center" style="margin-top: 50px">

				<button type="button" class="btn btn-outline-secondary"
					style="width: 200px">결제 하기</button>


			</div>







		</div>
	</div>




</body>
</html>