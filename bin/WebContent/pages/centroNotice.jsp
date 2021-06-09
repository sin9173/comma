<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>







<body>
	<!-- <input id="centroBtn" type="button" value="공지사항"> -->
	<!-- <input id="qaBtn" type="button" value="질문게시판" > -->
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="alert/question_write.jsp"></jsp:include>
	<jsp:include page="alert/notice_view.jsp"></jsp:include>
	<jsp:include page="alert/question_view.jsp"></jsp:include>

	<script type="text/javascript">
		$(document).ready(function() {

			// 		function noticeList() {
			// 			$.ajax({
			// 				type: "get",
			// 				url: "noticeList.do",
			// 				dataType: "json",
			// 				success: function (arr) {

			// 					for (var i = 0; i < arr.length; i++) {
			// 						var tr = $("<tr align='center'>")
			// 						var td1 = $("<td>")
			// 						td1.text(arr[i].id)
			// 						var td2 = $("<td>")
			// 						td2.text(arr[i].title)
			// 						var td3 = $("<td>")
			// 						td3.text(arr[i].date)
			// 						tr.append(td1).append(td2).append(td3)
			// 						$('#notice_boardList').append(tr);
			// 					}
			// 				}, error: function () {
			// 					console.log(xhrReq + ' / ' + status + ' / ' + error);
			// 				}
			// 			})
			// 		}

			// 	function questionList() {

			// 		$.ajax({
			// 			type: "get",
			// 			url: "questionList.do",
			// 			dataType: "json",
			// 			success: function (arr) {

			// 				for (var i = 0; i < arr.length; i++) {
			// 					var tr = $("<tr align='center'>")
			// 					var td1 = $("<td>")
			// 					td1.text(arr[i].id)
			// 					var td2 = $("<td>")
			// 					td2.text(arr[i].title)
			// 					var td3 = $("<td>")
			// 					td3.text(arr[i].date)
			// 					tr.append(td1).append(td2).append(td3)
			// 					$('#qa_boardList').append(tr);
			// 				}
			// 			}, error: function () {
			// 				console.log(xhrReq + ' / ' + status + ' / ' + error);
			// 			}
			// 		})

			// 	}
			// 	noticeList();
			// 	questionList();

		})
	</script>



	<div align="center">

		<div id="custom_title" align="center" style="width: 1200px;">
			<h2 style="font-weight: 900; font-size: 25px;">고객 센터</h2>
		</div>

		<br> <br>

		<div id="notice_board" align="left" style="width: 1100px;">
			<!-- 			<h2 style="font-weight: 800; font-size: 22px;">공지사항</h2> -->
			<div class="input-group mt-3 mb-3">
				<div class="input-group-prepend">
					<button type="button"
						class="btn btn-outline-secondary dropdown-toggle"
						data-toggle="dropdown">선택</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="notice.do">공지사항</a> 
						<a class="dropdown-item" href="question.do">질문게시판</a>
							
					</div>
				</div>
				
			</div>

			<div id="notice_boardList">
				<h2 style="font-weight: 800; font-size: 22px;">공지사항</h2>
				<table>

					<tr align="center">
						<th width="1200">작성자</th>
						<th width="1200">제목</th>
						<th width="1200">작성일</th>
					</tr>

					<tr>
						<td colspan="3" bgcolor="gray">
					</tr>

					<c:forEach items="${noticeList }" var="n">
						<tr>
							<td align="center">${n.id }</td>
							<td align="center"><h5 onclick="notice_view_open('${n.number}')">${n.title }</h5></td>
							<td align="center">${n.date }</td>
						</tr>
					</c:forEach>

					<tr>
						<td colspan="6" width="1400" bgcolor="hotpink"></td>
					</tr>

					
	
					
					
				</table>
				
				
				
				<ul class="pagination justify-content-center">
						
						<c:if test="${start != 1 }">
								<li class="page-item"><a class="page-link" href="notice.do?page=1"><<</a></li>

							<li class="page-item"><a class="page-link" href="notice.do?page=${start-1 }"><</a></li>
							</c:if>
							
							 <c:forEach begin="${start }" end="${end }" var="i">
								<c:choose>
									<c:when test="${i == current }">
										<li class="page-item"><a class="page-link">${i }</a></li>
									</c:when>

									<c:when test="${i <= last }">
									<li class="page-item"><a class="page-link" href="notice.do?page=${i }">${i }</a></li>
									</c:when>




								</c:choose>

							</c:forEach> <c:if test="${end < last }">
								<li class="page-item"><a class="page-link" href="notice.do?page=${end+1 }">></a></li>
								<li class="page-item"><a class="page-link" href="notice.do?page=${last}">>></a></li>
							</c:if>
					</ul>
				
				
				
				
				
<!-- 				 <ul class="pagination pagination-sm"> -->
<!--     <li class="page-item"><a class="page-link" href="#"><</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!--     <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
<!--   </ul> -->


			<!-- 			<div id="question_boardList"> -->
			<!-- 			<h2 style="font-weight: 800; font-size: 22px;">질문게시판</h2> -->
			<!-- 				<table> -->
			<!-- 					<tr align="center"> -->
			<!-- 						<th width="1200">작성자</th> -->
			<!-- 						<th width="1200">제목</th> -->
			<!-- 						<th width="1200">작성일</th> -->
			<!-- 					</tr> -->

			<!-- 					<tr> -->
			<!-- 						<td colspan="3" bgcolor="gray"> -->
			<!-- 					</tr> -->

			<%-- 					<c:forEach items="${questionList }" var="q"> --%>
			<!-- 						<tr> -->
			<%-- 							<td align="center">${q.id }</td> --%>
			<%-- 							<td align="center">${q.title }</td> --%>
			<%-- 							<td align="center">${q.date }</td> --%>
			<!-- 						</tr> -->
			<%-- 					</c:forEach> --%>

			<!-- 					<tr> -->
			<!-- 						<td colspan="6" width="1400" bgcolor="hotpink"></td> -->
			<!-- 					</tr> -->


			<!-- 					<tr> -->
			<%-- 						<td colspan="6" align="center"><c:if test="${start != 1 }"> --%>
			<!-- 								<a href="question.do?page=1">[처음]</a> -->
			<%-- 								<a href="question.do?page=${start-1 }">[이전]</a> --%>
			<%-- 							</c:if> <c:forEach begin="${start }" end="${end }" var="i"> --%>
			<%-- 								<c:choose> --%>
			<%-- 									<c:when test="${i == current }"> --%>
			<%-- 						[${i }] --%>
			<%-- 						</c:when> --%>

			<%-- 									<c:when test="${i <= last }"> --%>
			<%-- 										<a href="question.do?page=${i }">[${i }]</a> --%>
			<%-- 									</c:when> --%>




			<%-- 								</c:choose> --%>

			<%-- 							</c:forEach> <c:if test="${end < last }"> --%>
			<%-- 								<a href="question.do?page=${end+1}">[다음]</a> --%>
			<%-- 								<a href="question.do?page=${last}">[마지막]</a> --%>
			<%-- 							</c:if></td> --%>
			<!-- 					</tr> -->
			<!-- 				</table> -->
			<!-- 			</div> -->




		</div>
</body>
</html>