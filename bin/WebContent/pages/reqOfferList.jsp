<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div align="center">

<div style="width:1200px;">

<div aling="center" style="width:500px; display:inline-block;">
	<h3>검토중</h3>
</div>

<div align="center" style="width:500px; display:inline-block;">
	<h3>수락완료</h3>
</div>
<div style="overflow:auto; width:500px; height:500px; display:inline-block; border:1px solid black;">
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
</div>

<div style="overflow:auto; width:500px; height:500px; display:inline-block; border:1px solid black;">
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
</div>
</body>
</html>