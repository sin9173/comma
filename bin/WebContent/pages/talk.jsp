<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.talkForm {
	border: 1px solid #555;
	width: 400px;
	height: 600px;
	margin-right: 40px;
	border-radius: 10px;
	margin-top: 50px;
}

.talkBtn {
	margin-top: 50px;
	width: 150px;
}


</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>
</body>
<div align="center">
	<div align="left" style="width: 1200px">
		<div align="center" style="margin-top: 50px">
			<h2 style="font-weight: 900">쉼톡</h2>


			<div align="center" style="margin-top: 50px; width:">
				<div style="width:400px; height:500px; display:inline-block; vertical-align:top; border:1px solid black;"><!-- 왼쪽 목록 -->					
					
 	<div class="container">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li  style="margin-right:0px; background-color:#99CCFF; margin-bottom:0px;">
      <a class="nav-link active" data-toggle="tab" style="background-color:#99CCFF; margin-bottom:0px;" href="#home"><h5 style="font-weight:800; font-size:15px; color:black;">결제완료</h5></a>
    </li>
    <li style="margin-right:0px; background-color:#FFCCFF; margin-bottom:0px;">
      <a class="nav-link" data-toggle="tab" style="background-color:#FFCCFF; margin-bottom:0px;" href="#menu1"><h5 style="font-weight:800; font-size:15px; color:black;">결제미완료</h5></a>
    </li>
    <li style="margin-right:0px; background-color:#FFFFCC; margin-bottom:0px;">
      <a class="nav-link" data-toggle="tab" style="background-color:#FFFFCC; margin-bottom:0px;" href="#menu2"><h5 style="font-weight:800; font-size:15px; color:black;">요청된 클래스</h5></a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active" style="background-color:#99CCFF; height:450px;"><br>
      <div><!-- 채팅 기록, 프로필 -->
      
      </div>
    </div>
    <div id="menu1" class="container tab-pane fade" style="background-color:#FFCCFF; height:450px;"><br>
      <div><!-- 채팅 기록, 프로필 -->
      
      </div>
    </div>
    <div id="menu2" class="container tab-pane fade" style="background-color:#FFFFCC; height:450px;"><br>
      <div><!-- 채팅 기록, 프로필 -->
      
      </div>
    </div>
  </div>
</div>
 	


				</div>
				
				
				<div style="width:400px; height:500px; display:inline-block; vertical-align:top; margin-left:50px;"><!-- 오른쪽 채팅 -->
				
					<div style="width:380px; border:1px solid gray;">
						<div style="height:100px; margin-left:20px; margin-top:20px;"><!-- 프로필 -->
							<div style="display:inline-block; float:left;">
								<img src="img/test.jpg" style="width:90px; height:90px; border-radius: 150px;">
							</div>
							
							<div style="display:inline-block; float:left;">
								<h5 style="margin-top:30px; margin-left:30px; font-size:20px; font-weight:600">김민재</h5>
							</div>
							
						</div>
						
						<div style="width:350px; border-bottom:1px solid gray;"><!-- 밑줄 -->
							
						</div>
						
						<div style="height:330px;"><!-- 채팅구간 -->
						
						</div>
						
						<div style="height:50px;"><!-- 채팅입력구간 -->
							<input type="text" style="width:300px; height:35px; border-radius:100px; border:1px solid gray;" name="msg" placeholder=" 메세지 보내기...">
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5deb7bf243be710e1d210105/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</div>
</html>