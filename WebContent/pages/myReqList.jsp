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
	<h3 style="font-weight:800;">요청한 클래스</h3>
</div>
<div style="width:1250px; height:600px; margin-left:220px; overflow:auto;" align="center">

	<c:forEach var="r" items="${myRequest }">

				<div id="my_req" align="left"
					style="border: 1px solid black; height: 250px; width: 550px; display: inline:block; float: left; margin-left: 50px; margin-top:15px;">
					<div style="margin-top: 10px; margin-left: 10px;">
						<h5 style="font-size: 15px;">[분야]/[${r.c_category }]</h5>
						<h5 style="font-size: 15px;">[요청사항]${r.c_title }</h5>
					</div>

					<div
						style="display: inline:block; margin-top: 5px; margin-left: 10px; float: left;">
						<h5 style="font-size: 15px;">[원하는날짜]${r.c_startday }:${r.c_starttime }</h5>

					</div>

					<div style="display: inline:block; float: left; margin-left: 20px;">
						<input type="button" style="width: 120px;" value="삭제"
							onclick="delRequest('${r.number}')">
					</div>

					<br>
					<!-- 선생님현황 -->
					<c:choose>
					<c:when test="${r.teacher!=null }">
					<div align="left"
						style="margin-top: 10px; margin-left: 25px; width: 400px; height: 120px; border: 1px solid black;">

						<div align="center"
							style="display: inline-block; float: left; margin-top: 10px; margin-left: 10px;">
							<img class="myT_stphoto" src="profileImageView.do?id=${r.teacher}"
								style="width: 50px; height: 50px;"><br>
							<h5 style="font-size: 15px; margin-top: 10px;">${r.teacher }</h5>
						</div>

						<div
							style="display: inline-block; float: left; margin-left: 10px; width:300px;">
							<br> <input type="button" value="선생님 프로필"
								style="width: 120px; margin-left: 12px;"
								onclick="t_profile_open('${r.teacher}')">
							<!-- 선생님 아이디를 가지고 간다 -->
							<c:if test="${r.r_status==2 }">
							<input type="button" value="선생님 수락"
								onclick="t_accept_open('${r.number}','${r.teacher }')"
								style="width: 120px; margin-left: 12px;">
							</c:if>
							
							<c:if test="${r.r_status==3 }">
								<h5 style="display:inline-block; font-size:20px;">수락완료</h5>
							</c:if>	
							<input type="button" value="선생님 거절" style="margin-left:12px; margin-top:10px; width:120px;" onclick="rejectT('${r.number}')">	

						</div>


						<br>

					</div>
					</c:when>
					</c:choose>
				</div>
				
				</c:forEach>
</div>
</body>
</html>