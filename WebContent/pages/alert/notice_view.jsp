<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div align="center" class="popup_wide" id="notice_view">
		<!--닫기창  -->
		<div>
			<img src="img/close.png" class="closeimg" id="close_btn"
				onclick="notice_view_close()">
		</div>
		<!-- 제목창 -->
		<div style="margin-top: 30px;">
			<h1>공지사항 상세 보기</h1>
		</div>
		<hr align="center" width="600px">

		<div align="center" style="height: 30px; margin-left: 50px">
			<div style="display: inline-block; float: left; width: 150px;">
				<div style="display: inline-block; float: left;">작성자:</div>
				<div style="display: inline-block; float: left;">관리자</div>
		
			</div>
			<div style="display: inline-block; float: left; width: 300px;">
				<div style="display: inline-block; float: left;">제목:</div>
				<div id="n_titleView" style="display: inline-block; float: left;">DB 에서 꺼내온 제목</div>
				<!-- DB 에서 꺼내오기 -->
			</div>
			<div style="display: inline-block; float: left; width: 150px;">
				<div style="display: inline-block; float: left;">작성일:</div>
				<div id="n_dateView" style="display: inline-block; float: left;">19-11-08</div>
				<!-- DB 에서 꺼내오기 -->
			</div>
		</div>
		<hr align="center" width="600px">
		<div align="center" style="height: 50px; margin-left: 50px">

			<div style="display: inline-block; float: left;">내용:</div>
			<div id="n_contentView" style="display: inline-block; float: left;">
				<pre style="width: 600px; height: 300px; text-align: left; margin-left: 10px;">내용이다
dB 에서 꺼내온 내용
ㅇcccccccccccccccc
ㅇcccccccccccccccccccccccccccccaaaaaaaaaaaaaaaaaaaa
ccccccccccccccccccccccccccccccccccccccccccㅇc
cccccccccccccccccccccccccㅇ
cccccccccccccccccccccccㅇ
ccccccccccccccccccccccccㅇ
ccccccccccccccccccccccccccccccㅇ
cccccccccccccccccccccccccccccㅇ
cccccccccccccccccccccccccㅇ
cㅇcccccccccccccccccccccccccc
ccccccccccccccccccccccccccccccc
cccccccccccccccccccc
ccccccccccccccccccccccccccc
cccccccccccccccc
				</pre>
			</div>




		</div>
	</div>
</body>
</html>