<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>movie.jsp</title>
<style>
video {
  margin-left: 230px;
  width: 75%;
  height: 800px;
}
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 200px;
  background-color: black;
  color: #fff;
  text-align: left;
  border-radius: 6px;
  padding: 5px 0;
  
  position: absolute;
  z-index: 1;
  top: 100%;
  left: 50%;
  margin-left: -50px;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>
</head>
<body style="background-color: black">
	<div class="w3-padding-large">
		<!-- Header -->
		<header class="w3-container w3-padding-16 w3-center w3-balck">
			<a href="select.jsp">
				<img src="imgs/enflix.png" width="300" height="90" style="margin-left: 650px; margin-right: 550px;">
			</a>
			<p class="w3-right">
				<div class="tooltip">
					<i class="fa fa-file-movie-o w3-opacity-off w3-hover-opacity" style="font-size: 30px; color: white;"></i>
					<span class="tooltiptext">
						제목 : ${mov.name} <br>
						장르 : ${mov.genre} <br>
						감독 : ${mov.director} <br>
						연령제한 : ${mov.age}세 이상 <br>
						등급제한 : ${mov.rating}부터 가능
					</span>
				</div>
			</p>
		</header>
		
		<!-- video -->
		<video controls autoplay muted>
		  <source src="video/${movie}.mp4" type="video/mp4">
		</video>
	</div>
</body>
</html>