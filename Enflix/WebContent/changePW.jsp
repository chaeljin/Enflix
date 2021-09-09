<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
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
			<h1>비밀번호 변경</h1>
			<div class="container">
				<form action="./enflix" method="post" id=userinfo>
					<input type="hidden" name="command" value="updateUser"> <input type="hidden" name="email" value="${sessionScope.user.email}"> <input type="password" placeholder="비밀번호를 입력하세요" name="pw" required> <br> <input type="text" placeholder="새로운 비밀번호를 입력하세요" name="newPw" required> <br> <br> <input class="join" type="submit" value="비밀번호 변경">&nbsp;&nbsp;&nbsp;<input class="cancel" type="reset" value="초기화">
				</form>
			</div>
		</div>
	</div>
</body>
</html>