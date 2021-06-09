<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
        function popup(){
            var url = "popup.html";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
    </script>
<title>Insert title here</title>
</head>
<body>
<a href = "javascript:popup()" target = "_blank">팝업</a>
	
	
	
	
</body>
</html>