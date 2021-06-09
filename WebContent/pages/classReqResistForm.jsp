<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- JavaScript로드-->
<script src="js/local.js" type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<br>
	
	<div align="center">
	<div align="center" style="width:900px;">

		<h2 style="font-weight: 900;">클래스 요청 등록</h2>
		<br>
		<form action="classReqResist.do" method="post">


			<br>
			<div class="input-group mb-3" style="width: 500px;">
				<div class="input-group-prepend">
					<span class="input-group-text">제목</span>
				</div>
				<input type="text" name="c_title" class="form-control" placeholder="제목을 입력해주세요.">
				<br>

			</div>
			<br>

			<div style="width: 500px;">
				<div class="input-group-prepend" style="display: inline-block;">
					<span class="input-group-text">카테고리</span>
				</div>

				<div style="display: inline-block; width:400px;">
					<select name="c_category" class="custom-select">
						<option selected>카테고리</option>
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
						<option value="기타">기타</option>
					</select>
				</div>
			</div>
			
			
			<div class="input-group mb-3" style="width: 500px; margin-top:50px;">
				
				<div class="input-group-prepend">
					<span class="input-group-text">수업가격</span>
				</div>
				<input type="text" name="price" class="form-control" placeholder="수업가격을 입력해주세요.">
				<br>

			</div>
			
			
			<br>
			
			<div style="width: 500px;">
				<div class="input-group-prepend" style="display: inline-block; float:left;">
					<span class="input-group-text">위치</span>
				</div>

				<div style="display: inline-block; float:left; width:100px;">
					<select name="province" class="custom-select">
						<option selected>도</option>
						<option value="특별시">특별시</option>
						<option value="경기도">경기도</option>
						<option value="경상북도">경상북도</option>
						<option value="경상남도">경상남도</option>
						<option value="충청북도">충청북도</option>
						<option value="충청남도">충청남도</option>
						<option value="전라북도">전라북도</option>
						<option value="전라남도">전라남도</option>
						<option value="제주도">제주도</option>
						

					</select>
				</div>
				
				<div style="display: inline-block; float:left; width:100px;">
					<select name="city" class="custom-select">
						<option selected>시</option>
						<option value="서울시">서울시</option>
						
					</select>
				</div>
				
				<div style="display: inline-block; float:left; width:100px;">
					<select name="gu" class="custom-select">
						<option selected>구</option>
						<option value="종로구">종로</option>
						
					</select>
				</div>
			</div>
			<br> <br>
			
			
			<div class="form-group" style="width: 600px;">
				<label for="comment">요청내용을 입력해주세요.</label>
				<textarea style="border: 1px solid black;" class="form-control"
					rows="5" id="comment" name="content"></textarea>
			</div>
			
			<br>
			
			<div align="center" style="width:500px;">
			
			<div style="display:inline-block; float:left;">
				<h4 style="font-size:20px;">날짜</h4>
			</div>
			
			
			<div style="display:inline-block; float:left;">
			<select name="year" class="custom-select" style="width: 100px;">
				<option selected>년</option>
				<option value="2019년">2019년</option>
				<option value="2020년">2020년</option>
				

			</select>
			</div>
			
			<div style="display:inline-block; float:left;">
			 <select name="month" class="custom-select" style="width: 100px;">
				<option selected>월</option>
				<option value="1월">1월</option>
				<option value="2월">2월</option>
				<option value="3월">3월</option>
				<option value="4월">4월</option>
				<option value="5월">5월</option>
				<option value="6월">6월</option>
				<option value="7월">7월</option>
				<option value="8월">8월</option>
				<option value="9월">9월</option>
				<option value="10월">10월</option>
				<option value="11월">11월</option>
				<option value="12월">12월</option>

			</select> <br> <br>
			</div>
			
			<div style="display:inline-block; float:left;">
			<select name="day" class="custom-select" style="width: 100px;">
				<option selected>일</option>
				<c:forEach var="i" begin="1" end="31" step="1">
					<option value="${i }일">${i }일</option>
				</c:forEach>
				
				

			</select>
			</div>
			
			
			</div>
			<br>
			<br>
			<br>
			<br>
			
			<div style="width:400px;">
				<div style="display:inline-block; float:left;">
					<h4 style="font-size:20px;">일시</h4>
				</div>
				
				<div style="display:inline-block; float:left;">
				<select name="time" class="custom-select" style="width: 100px;">
					<option selected>오전</option>
					<option value="오전">오전</option>
					<option value="오후">오후</option>

				</select>
				
				</div>
				
				
				<div style="display:inline-block; float:left;">
					<select name="hour" class="custom-select" style="width: 100px;">
					<option selected>시</option>
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
			</div>

			<br>
			<br>
			<br>
			
			
			<div style="width:400px;">
				<div style="display:inline-block; float:left;">
					<h4 style="font-size:20px;">원하는 수업 시간</h4>
				</div>
				
				<div style="display:inline-block; float:left;">
					<select name="c_period" class="custom-select" style="width: 100px;">
					<option selected>수업진행시간</option>
					<option value="1시간">01시간</option>
					<option value="2시간">02시간</option>
					<option value="3시간">03시간</option>
					<option value="4시간">04시간</option>
					<option value="5시간">05시간</option>
					<option value="6시간">06시간</option>
					<option value="7시간">07시간</option>
					<option value="8시간">08시간</option>
					<option value="9시간">09시간</option>
					<option value="10시간">10시간</option>
					<option value="11시간">11시간</option>
					<option value="12시간">12시간</option>
					

				</select>
				
				</div>
			</div>
			
			<br>
			<br>
			<br>
			<div style="display:inline;">
			 <input type="submit" class="btn btn-outline-info" value="등록"> 
			 
			 <input type="button" class="btn btn-outline-info" value="취소">
				
			</div>	


		</form>

	</div>
	</div>

	<div class="dim"></div>
	<div align="center">
		<div align="center" class="popup_wide" id="local_search">


			<div style="margin-top: 50px; margin-bottom: 50px;">
				<div>
					<img src="img/close.png" class="closeimg" id="close_btn"
						onclick="local_search_close()">
				</div>
				<input type="text" placeholder=" 검색어를 입력해주세요"
					style="width: 500px; height: 50px; border-radius: 3px;" name="key">
				<button type="submit">검색</button>
			</div>
			<hr width="600px">
			<div style="width: 600px; margin-bottom: 40px;" align="center">
				<div
					style="display: inline-block; float: left; margin-right: 170px; margin-left: 40px">
					No.</div>

				<div
					style="display: inline-block; float: left; margin-right: 170px;">
					도로명 주소</div>

				<div style="display: inline-block; float: left;">우편번호</div>

			</div>
			<hr width="600px">
			<div style="border: 1px solid black; width: 600px; height: 250px;">



			</div>

		</div>
	</div>




</body>
</html>