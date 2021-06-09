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
<script src="js/review.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		var page = 2;
		$("#rev_List").scroll(function(){
			var innerHeight = $(this).innerHeight();
			var scroll = $(this).scrollTop() + $(this).innerHeight();
			var height = $(this)[0].scrollHeight;
			
			if(scroll >= height){
				//alert("안녕?" + scroll + ":" + height);
				addRevList(page, '<%=request.getParameter("keyword")%>');
				page = page + 1;
			}
		});
	});

</script>

<body>
	<jsp:include page="header.jsp"></jsp:include><br>
	<jsp:include page="alert/photo_review_write.jsp"></jsp:include><br>
	<jsp:include page="alert/photo_review_view.jsp"></jsp:include><br>

	
	<div align="center">
	<h2
		style="display: inline-block; margin-bottom: 50px; float:left; margin-left:350px; font-weight:800">리뷰</h2>
	<button type="button" class="btn btn-outline-secondary"
		style="display: inline-block; float:right; margin-right:350px;" onclick="pReview_write_open()">리뷰 작성</button>

<br><br><br><br>
		<div id="rev_List" style="width:1200px; height:1000px; overflow:auto; border:1px solid black;">
			
			<c:forEach var="rev" items="${reviewList }">
			<div class="card" style="width: 340px; height:330px; display:inline-block; float:left; border:1px solid red; margin-top:50px; margin-right:50px;"
				onclick="pReview_view_open('${rev.number}')">
				<img class="card-img-top" src="reviewImageView.do?number=${rev.number }" style="width: 100%; height:200px;">
				
				<div class="card-body" style="border:1px solid blue; width:340px; height:120px;">
					
						
								<div align="Left" style="display:inline-block; float:left; width:90px; height:90px;">
									<img src="profileImageView.do?id=${rev.id }" id="my_prophoto" style="width:80px; height:80px;">
									<br> <a style="margin-left: 13px;">${rev.id }</a>
								</div>
							

							
								<div align="left" style="display: inline-block; float:left; width:200px;">
									<h5>${rev.title }</h5>
								</div>
								
						

				</div>
			</div>
			
			</c:forEach>
		</div>

	</div>
</body>
<script src="js/review.js" type="text/javascript"></script>
</html>