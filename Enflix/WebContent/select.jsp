<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<c:if test="${empty sessionScope.user.email}">
	<%
		response.sendRedirect("check.jsp");
	%>
</c:if>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon" href="imgs/favicon.ico">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/ani.css">
<title>select.html</title>
<style>
.dropbtn {
	width: 50px;
	background-color: #04AA6D;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 80px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.modalbtn {
	background-color: red;
	color: white;
	padding: 10px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 40%;
	height: 40px;
	border-radius: 5px;
}

.modalbtn:hover {
	opacity: 0.8;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #3e8e41;
}

.logoutmodal {
	background-color: red;
	color: white;
	padding: 10px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 40%;
	height: 40px;
	border-radius: 5px;
}

.logoutmodal:hover {
	opacity: 0.8;
}
</style>
</head>

<body style="background-color: black">

	<div class="w3-padding-large">
		<!-- Header -->
		<header class="w3-container w3-padding-32 w3-center w3-balck">
			<a href="select.jsp">
				<img src="imgs/enflix.png" width="500" height="150" style="margin-left: 650px; margin-right: 550px;">
			</a>
			<p class="w3-right">
			<div class="dropdown">
				<i class="fa fa-user-circle-o w3-opacity-off w3-hover-opacity" style="font-size: 30px; color: white; margin-right: 10px"></i>
				<div class="dropdown-content">
					<a href="#" class="w3-bar-item w3-button">${sessionScope.user.name}님</a>
					<a href="myPage.jsp" class="w3-bar-item w3-button">마이 페이지</a>
					<a href="#" class="w3-bar-item w3-button" onclick="document.getElementById('logout').style.display='block'">로그 아웃</a>
				</div>
			</div>
			<i class="fa fa-search w3-opacity-off w3-hover-opacity" onclick="document.getElementById('search').style.display='block'" style="font-size: 30px; color: white;"></i>
			</p>
		</header>
		<!-- About Movie -->
		<div class="w3-row-padding" style="margin-left: 20px">
			<h2 class="w3-text-white">Movie</h2>
			<hr style="width: 200px" class="w3-opacity">

			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=모가디슈'"> <img src="imgs/모가디슈.png" alt="" class="static" style="width: 100%"> <img src="gif/모가디슈.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>모가디슈</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=짱구'"> <img src="imgs/짱구.png" alt="" class="static" style="width: 100%"> <img src="gif/짱구.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>짱구는 못말려 극장판 : 격돌! 낙서왕국과 얼추 네 명의 용사들</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=D.P.'"> <img src="imgs/D.P..png" alt="" class="static" style="width: 100%"> <img src="gif/D.P..gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>D.P.</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=해리포터'"> <img src="imgs/해리포터.png" alt="" class="static" style="width: 100%"> <img src="gif/해리포터.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>해리포터와 마법사의 돌</b>
					</p>
				</div>
			</div>
		</div>

		<!-- About eunjin -->
		<div class="w3-row-padding" style="margin-left: 20px">
			<h2 class="w3-text-white">Eunjin</h2>
			<hr style="width: 200px" class="w3-opacity">

			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=eunjin1'"> <img src="imgs/eunjin1.png" alt="" class="static" style="width: 100%"> <img src="gif/eunjin1.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>대탈출</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=eunjin2'"> <img src="imgs/eunjin2.png" alt="" class="static" style="width: 100%"> <img src="gif/eunjin2.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>바다</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=eunjin3'"> <img src="imgs/eunjin3.png" alt="" class="static" style="width: 100%"> <img src="gif/eunjin3.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>회오리</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=eunjin4'"> <img src="imgs/eunjin4.png" alt="" class="static" style="width: 100%"> <img src="gif/eunjin4.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>만지작</b>
					</p>
				</div>
			</div>
		</div>

		<!-- About Movie -->
		<div class="w3-row-padding" style="margin-left: 20px">
			<h2 class="w3-text-white">Haerim</h2>
			<hr style="width: 200px" class="w3-opacity">

			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=haerim1'"> <img src="imgs/haerim1.png" alt="" class="static" style="width: 100%"> <img src="gif/haerim1.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>길고양이 놀아주기</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=haerim2'"> <img src="imgs/haerim2.png" alt="" class="static" style="width: 100%"> <img src="gif/haerim2.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>고양이 꾹꾹이</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container w3-margin-bottom" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=haerim3'"> <img src="imgs/haerim3.png" alt="" class="static" style="width: 100%"> <img src="gif/haerim3.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>육회</b>
					</p>
				</div>
			</div>
			<div class="w3-third w3-container" style="width: 450px; height: 350px;">
				<span class="hov-anim-box" onclick="location.href='movies?movie=haerim4'"> <img src="imgs/haerim4.png" alt="" class="static" style="width: 100%"> <img src="gif/haerim4.gif" alt="" class="animated" style="width: 100%">
				</span>
				<div class="w3-container w3-black w3-text-white">
					<p>
						<b>갈매기</b>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Search Modal -->
	<div id="search" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content" style="background-color: #1a1a1a; padding: 32px; text-align: center; opacity: 0.9;">
			<div class="w3-container" style="background-color: #1a1a1a; opacity: 0.9">
				<i onclick="document.getElementById('search').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right" style="color: white"></i>
				<h2 style="color: white">Search</h2>
				<p style="color: white">검색하고 싶은 영상의 이름을 입력해주세요</p>
				<form action="searchPage">
		        	<p><input class="w3-input w3-border" type="text" placeholder="Enter Search" name="search"></p>
		           <input type="submit" value="Search" class="modalbtn" style="border-radius: 10px;">
		        </form>
			</div>
		</div>
	</div>
	
	<div id="logout" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content" style="background-color: #1a1a1a; padding: 32px; text-align: center; opacity: 0.9;">
			<div class="w3-container" style="background-color: #1a1a1a; opacity: 0.9">
				<i onclick="document.getElementById('logout').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right" style="color: white"></i>
				<h2 style="color: white; margin-left: 50px;">로그아웃</h2>
				<p style="color: white">로그아웃 하시겠습니까?</p>
				<br>
				<form action="./enflix" id=logout>
					<input type="hidden" name="command" value="logoutUser"> <input type="submit" class="modalbtn" value="로그아웃">
				</form>
			</div>
		</div>
	</div>

</body>
</html>