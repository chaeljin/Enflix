<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome page</title>
<style>
.msg {
	width: 400px;
	height: 200px;
	color: white;
	text-align: center;
	background-size: cover;
	background-position: center;
	border-radius: 10px;
	padding-top: 20px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
}

.wrap {
	width: 400px;
	height: 100%;
	margin: auto;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
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
		<div class="msg">
			<h2>가입이 완료되었습니다.</h2>
			<h3>엔플릭스만의 다양한 컨텐츠를 경험하세요</h3>
			<button onclick="location.href='login.html'">로그인</button>
		</div>
	</div>
</body>
</html>