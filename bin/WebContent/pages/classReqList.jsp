<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cssconfig.css">
    <title>Insert title here</title>
</head>

<script src="js/teacherResist.js" type="text/javascript"></script>
<script src="js/request.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function(){
		
		var page = 2;
		
		$("#cl_reqListForm").scroll(function(){
			
			var innerHeight = $(this).innerHeight();
			var scroll = $(this).scrollTop() + $(this).innerHeight();
			var height = $(this)[0].scrollHeight;
			
			//alert(scroll + ":" + height);
			
			if(scroll >= height){
				//alert("안녕?" + scroll + ":" + height);
				addReqList(page, '<%=request.getParameter("category")%>', '<%=request.getParameter("keyword")%>');
				page = page + 1;
			}
		});
	});
</script>
<body>
    <jsp:include page="header.jsp"></jsp:include><br>

    <div align="center">
        <div align="center" style="width: 1200px">
          <br> <br> <br>
			<div class="span" align="center">
				<img src="img/요리.png" id="cook" class="icon"> <br> <a
					href="classReqList.do?category=요리" class="iconText">요리</a>
			</div>

			<div class="span" align="center">
				<img src="img/수공예.png" id="handmade" class="icon"> <br>
				<a href="classReqList.do?category=수공예" class="iconText">수공예</a>
			</div>

			<div class="span" align="center">
				<img src="img/미술.png" id="art" class="icon"> <br> <a
					href="classReqList.do?category=미술" class="iconText">미술</a>
			</div>

			<div class="span" align="center">
				<img src="img/액티브티.png" id="activity" class="icon"> <br>
				<a href="classReqList.do?category=액티비티" class="iconText">액티비티</a>
			</div>

			<div class="span" align="center">
				<img src="img/뷰티.png" id="beauty" class="icon"> <br> <a
					href="classReqList.do?category=뷰티" class="iconText">뷰티</a>
			</div>

			<div class="span" align="center">
				<img src="img/음악.png" id="music" class="icon"> <br> <a
					href="classReqList.do?category=음악" class="iconText">음악</a>
			</div>

			<div class="span" align="center">
				<img src="img/언어.png" id="language" class="icon"> <br>
				<a href="classReqList.do?category=언어" class="iconText">언어</a>
			</div>


			<div class="span" align="center">
				<img src="img/웹개발.png" id="webDevelopment" class="icon"> <br>
				<a href="classReqList.do?category=웹개발" class="iconText">웹개발</a>

			</div>
          

            <div class="span" align="center">
                <img src="img/기타등등.png" id="exception" class="icon">
                <br>
                <a href="classReqList.do?category=기타" class="iconText">기타등등</a>
            </div>



        </div><br><br>

        <form action="classReqList.do">
            <div align="center">
                <div class="input-group mb-3" style="width:600px;">
                    <input type="text" name="keyword" class="form-control" placeholder="검색어 입력">
                    <div class="input-group-append">
                        <button class="btn btn-success" type="submit">Go</button>
                    </div>
                </div>
            </div>
        </form>
        
      

        <form action="">
            <div align="center">
                <h2 align="center">클래스요청</h2>
                <div id="cl_reqListForm" style="overflow:auto; width: 1100px; height: 800px;">
            
            		<c:forEach var="r" items="${classReqList }">
                	<div style="display:inline-block; float:left; width:450px; height:170px; margin-left:50px; margin-top:50px; background: #CCFFCC;" onclick="classReqInfo(${r.number })">
                		<div style="display:inline-block; float:left; width:150px;">
                			<img src="profileImageView.do?id=${r.id }" id="my_prophoto" class="icon" style="width: 145px; height: 145px">
                		</div>
                		
                		<div align="left" style="display:inline-block; float:left; width:295px;">
                			<div style="display: inline-block">
                          	  <h5 style="font-size:15px;">[분야]-[${r.c_category }]</h5>
                          	  <h5 style="font-size:15px;">[요청사항]</h5>
                          	  <h5 style="font-size:15px;">${r.c_title }</h5>
                          	  <img style="display:inline-block; vertical-align:top;" src="img/위치.png" id="money" class="icon" width="15px" height="15px">
                          	  <h5 style="font-size:15px; display:inline-block;">[위치]${r.c_location }</h5>
                          	  
                       		 </div>
                       		 <br>
                        	<img src="img/원.png" id="money" class="icon" width="20px" height="20px">
                        	<h5 style="font-size:15px; display:inline-block;">${r.price }원</h5>
                		</div>
                	
                	</div>
                	</c:forEach>
                	
                	
                	
                	
                	
                </div>	
                
                

            </div><br><br>

            <button type="button" class="btn btn-secondary" style="left: 1400px; top: 1100px; margin-left: 800px; "onclick="location.href='classReqResistForm.do'">클래스 요청 하기</button>
                

        </form>

</div>


</body>
<script src="js/request.js" type="text/javascript"></script>
</html>