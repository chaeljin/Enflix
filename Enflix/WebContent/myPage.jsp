<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/ani.css">
<title>select.html</title>

</head>
<body style="background-color: black">
	<div class="w3-padding-large">
		<header class="w3-container w3-padding-32 w3-center w3-balck">
			<img src="imgs/enflix.png" width="500" height="150" style="margin-left: 650px; margin-right: 550px;">
			<p class="w3-right">
			<div class="dropdown">
				<i class="fa fa-user-circle-o w3-opacity-off w3-hover-opacity" style="font-size: 30px; color: white; margin-right: 10px"></i>
				<div class="dropdown-content">
					<a class="w3-bar-item w3-button">${requestScope.user.name}님</a>
					<a href="myPage.jsp" class="w3-bar-item w3-button">마이 페이지</a>
					<a href="#" class="w3-bar-item w3-button">로그 아웃</a>
				</div>
			</div>
			<i class="fa fa-search w3-opacity-off w3-hover-opacity" onclick="document.getElementById('search').style.display='block'" style="font-size: 30px; color: white;"></i>
			</p>
		</header>
		</div>
</body>
</html>