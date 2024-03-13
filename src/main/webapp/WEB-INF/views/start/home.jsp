<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 위에 코드는 인터넷에 있는 jQuery 파일을 import 하는 코드이다 -->

<link rel="shortcut icon" href="/resources/icon/AmongLogo1.ico">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="resources/css/login.css">
<html>
<head>
  <title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;로그인</title>
</head>
<body>
<!-- hidden div 같은거에
	 form 만들고
	 게시글 조회 버튼 같은거 클릭했을 때
	 form 안에 input name=... 같은거 추가,
	 jQuery로 submit 해버리면 원하는 데이터를 form으로 전송 가능
-->
<!-- <h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<input type="text" id="input">

<button name="test" id="test" class="test">test Button</button>

<table id="cityTable">
</table>
 -->
	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->

			<!-- 아이콘 버튼 -->
			<br>
			<div class="fadeIn first">
				<a href="javascript:location.reload();"><img src="/resources/img/crewmate.png" alt="User Icon" id="icon" /></a>
				<h1>
					<a href="javascript:location.reload();" id="Logo1">어몽어스&nbsp;커뮤니티</a>
				</h1>
				<br>
			</div>

			<!-- 로그인 폼 -->
			<form>
				<input type="text" id="login" class="fadeIn second" name="login" placeholder="ID" maxlength="20">
				<input type="password"id="password" class="fadeIn third" name="password" placeholder="Password" maxlength="20">
				<br><br>
				<input type="button" class="login" id="btn-login" value="로그인">
			</form>

			<div id="formFooter">
				<a href="/start/signup"><button class="signup" name = "signup" id = signup>회원가입</button></a>
			</div>
		</div>
	</div>
</body>
</html>

<script type="text/javascript" src="resources/home.js"></script>
<!-- 위에 코드는 로컬에 있는 js 파일을 jsp와 import 시키는 코드이며 src/main/까지만 연결, resources/ 안에 폴더 적어줌 -->