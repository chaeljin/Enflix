<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% String url = application.getContextPath() + "/"; %>
    
<!DOCTYPE html>
<html lang = "ko">
<head>
<title>Error page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href = "css/playdata.css" >
<title>Insert title here</title>
</head>

<body style="background-color: #f1f1f1;">
<br><br><br>

	<div align = "center">
	
		<h3>${requestScope.errorMsg}</h3>
			
		<br><br><br>
		<a href="${pageContext.request.contextPath}/main.html">메인 화면으로 이동하기</a>
	</div>
	
</body>
</html>