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
<title>Enflix</title>
<style>
.box {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 300px;
	height: 500px;
	color: white;
	text-align: center;
	background-size: cover;
	background-position: center;
	background-color: #1a1a1a;
	border-radius: 10px;
	padding-top: 20px;
	border-radius: 10px;
	transform: translate(-50%, -50%);
}

p, h4 {
	color: white;
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

.logoutbtn {
	background-color: red;
	font-size: 13px;
	color: white;
	padding: 5px 10px;
	border: none;
	cursor: pointer;
	width: 80px;
	height: 30px;
	border-radius: 5px;
	margin: 8px 0;
	background-color: red;
	left: 50%;
}

.logoutbtn:hover {
	opacity: 0.8;
}

</style>

</head>
<body style="background-color: black">

	<div class="w3-padding-large">
		<header class="w3-container w3-padding-32 w3-center w3-balck">
			<img src="imgs/enflix.png" width="500" height="150" style="margin-left: 650px; margin-right: 550px;">
			<p class="w3-right">
				<i class="fa fa-search w3-opacity-off w3-hover-opacity" onclick="document.getElementById('search').style.display='block'" style="font-size: 30px; color: white;"></i>
			</p>

		</header>
	</div>

	<div class="box">
		<h4>${sessionScope.user.name}님의 결제정보</h4>
		<p>이용 요금제 : ${sessionScope.user.planType}</p>
		<p>결제 예정일 : 매월 ${sessionScope.user.paymentDate}일</p>
		<br> <br>
		<h4>계정 정보</h4>
		<span class="change" style="color: white">E-mail : ${sessionScope.user.email} <br> <a href="changePW.jsp">비밀번호 변경하기</a></span>
		<p>${requestScope.errorMsg}</p>
		<button class="logoutbtn" onclick="document.getElementById('logout').style.display='block'">로그아웃</button><br>
		<a href="byebye.jsp" style="color: red">회원 탈퇴하기</a>


	</div>
	<div id="logout" class="w3-modal w3-animate-opacity">
		<div class="w3-modal-content" style="background-color: #1a1a1a; padding: 32px; text-align: center; opacity: 0.9;">
			<div class="w3-container" style="background-color: #1a1a1a; opacity: 0.9">
				<i onclick="document.getElementById('logout').style.display='none'" class="fa fa-remove w3-transparent w3-button w3-xlarge w3-right" style="color: white"></i>
				<h2 style="color: white; margin-left: 50px">로그아웃</h2>
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