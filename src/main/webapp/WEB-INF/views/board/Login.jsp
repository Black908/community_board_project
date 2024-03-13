<!-- 
화면명 : 로그인 화면
작성일 : 2020.10.20
작성자 : 유현민 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/resources/icon/AmongLogo1.ico">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="../CSS/Login.css">

<title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;로그인</title>
</head>

<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- Icon -->
			<br>
			<div class="fadeIn first">
				<a href="index.jsp"><img src="../IMG/crewmate.png"alt="User Icon" id="icon" /></a>
				<h1>
					<a href="index.jsp" id="Logo1">어몽어스&nbsp;커뮤니티</a>
				</h1>
				<br>
			</div>

			<!-- Login Form -->
			<form>
				<input type="text" id="login" class="fadeIn second" name="login" placeholder="ID" maxlength="20">
				<input type="password"id="password" class="fadeIn third" name="login" placeholder="password" maxlength="20">
				<br><br>
				<input type="submit" class="fadeIn fourth" value="로그인">
			</form>

			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="SignUp.jsp">회원가입</a>
			</div>
			
		</div>
	</div>
	
</body>
</html>