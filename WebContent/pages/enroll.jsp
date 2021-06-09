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
	
	<div align="center" style="width:800px; margin-top:150px; margin-left:500px;"><!-- 전체 div -->
		
		<div><!-- 제목 -->
			<h4>수강신청 현황</h4>
		</div>
		
		<!-- 공지, 신청수 -->
		<div>
			<div style="display:inline-block; float:left">
				<input type="button" class="btn btn-secondary" value="공지TALK">
			</div>
			
			<div style="display:inline-block; float:right">
				<h5>신청수: 1명</h5>
			</div>
		</div>
		<br><br>
		<div align="left" style="border:1px solid black; display:block; height:400px;"><!-- 신청  현황 -->
			<div style="width:350px; height:100px; margin-left:50px;">
				<div style="display:inline-block; float:left; width:70px;">
					<img  class="myT_stphoto"src="img/test.jpg" style="width:70px; height:70px; margin-top:10px;">
				
				</div>
				
				<div style="display:inline-block; float:left; width:150px; margin-left:10px;">
					<h5 style="font-size:15px;">김악질(student)</h5>
					<h5 style="font-size:15px;">kimbad55@naver.com</h5>
					<h5 style="font-size:15px;">010-3265-4589</h5>
				</div>
				
				
				<div style="display:inline-block; float:left; width:100px;">
					<input type="button" value="1:1상담" style="margin-left:20px; margin-top:30px;" class="btn btn-secondary" onclick="location.href='talk.do'">
				</div>
			</div>
		</div>
		
	</div><!-- 전체 div END -->
</body>
</html>