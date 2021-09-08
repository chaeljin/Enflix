<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>movie.jsp</title>
<style>
video {
  margin-left: 230px;
  width: 75%;
  height: 800px;
}
</style>
</head>
<body style="background-color: black">
	<div class="w3-padding-large">
		<!-- Header -->
		<header class="w3-container w3-padding-32 w3-center w3-balck">
		<a href="select.html">
			<img src="imgs/enflix.png" width="500" height="150">
			</a>
		</header>
		
		<!-- video -->
		<video controls autoplay muted>
		  <source src="video/${movie}.mp4" type="video/mp4">
		</video>
	</div>
</body>
</html>