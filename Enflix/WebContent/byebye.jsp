<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="shortcut icon" type="image/x-icon" href="imgs/favicon.ico">
<meta charset="UTF-8">
<title>Enflix</title>
<style>
.login {
	width: 300px;
	height: 200px;
	color: white;
	text-align: center;
	background-size: cover;
	background-position: center;
	border-radius: 10px;
	padding-top: 20px;
}

.wrap {
	width: 300px;
	margin: auto;
}

input {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	border-radius: 5px;
}

button {
	background-color: red;
	color: white;
	padding: 10px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 46%;
	height: 40px;
	border-radius: 5px;
}
select {
	width: 100%;
	height: 30px;
	padding: 3px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
	border-radius: 5px;
}
.cancel {
	background-color: grey;
	color: white;
	padding: 10px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 46%;
	height: 40px;
	border-radius: 5px;
}

.join {
	background-color: red;
	color: white;
	padding: 10px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 46%;
	height: 40px;
	border-radius: 5px;
}

button:hover {
	opacity: 0.8;
}

.logo {
	margin-left: 40px;
	margin-top: 40px;
}
</style>
</head>
<body style="background-color: black">
	<div class="logo">
		<a href="main.html">
			<img src="imgs/enflix.png" alt="logo" width="100px">
		</a>
	</div>
	<div class="wrap">
		<div class="login">
			<h1>회원 탈퇴</h1>
			<div class="container">
				<form action="./enflix" method="post" id=byeuser>
					<input type="hidden" name="command" value="byeUser"> 
					<input type="hidden" name="email" value="${sessionScope.user.email}">
					<input type="password" placeholder="비밀번호를 입력하세요" name="pw" required> 
					<p style="font-size:3px; text-align:left">왜 탈퇴하시는지 알려주세요ㅠㅠ</p>
					<select id="byeuser" name="reason">
						<option value="곽형림">곽형림 때문이다</option>
						<option value="정은진">정은진 때문이다</option>
						<option value="최해림">최해림 때문이다</option>
					</select>
					<br>
					<input class="join" type="submit" value="회원 탈퇴">&nbsp;&nbsp;&nbsp;<input class="cancel" type="reset" value="초기화">
				</form>
			</div>

		</div>
	</div>
</body>
</html>