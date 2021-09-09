<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% String url = application.getContextPath() + "/"; %>
    
<!DOCTYPE html>
<html lang = "ko">
<head>
<title>Error page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href = "css/playdata.css" >
<title>Insert title here</title>
</head>

<body style="background-color: black;">
	<div class="w3-padding-large">
		<!-- Header -->
		<header class="w3-container w3-padding-32 w3-center w3-balck">
			<a href="main.html">
				<img src="imgs/enflix.png" width="500" height="150" style="align: center;">
			</a>
			
			<br><br><br><br><br><br>
			
			<h3 class="w3-text-white" style="text-align: center; font-size: 50px">로그인 후 이용 가능한 페이지입니다.</h3>
				
			<br><br><br>
			<a class="w3-text-white" href="${pageContext.request.contextPath}/main.html" style="text-align: center;">메인으로 이동하기</a>
		</header>
		</div>

</body>
</html>