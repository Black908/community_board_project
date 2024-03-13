<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- 위에 코드는 인터넷에 있는 jQuery 파일을 import 하는 코드이다 -->

<link rel="shortcut icon" href="/resources/icon/AmongLogo1.ico">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="/resources/css/SignUp.css" type="text/css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;회원가입</title>
</head>
<body>
	<div class="register">
		<div class="row">
			<div class="col-md-3 register-left">
				<a href="signup"><img src="/resources/img/AmongLogo.png"></a>
				<h1>
					<a href="signup" id="text_logo1"><strong>회원가입</strong></a>
				</h1>
			</div><!-- <div class="col-md-3 register-left"> -->

			<div class="col-md-9 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						<div class="row register-form">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="이름 *" id = "userName" name = "userName" maxlength="20" />
								</div>
								
								<div class="form-group">
									<input type="text" class="form-control" placeholder="닉네임 *" id = "userNickName" name = "userNickName" maxlength="20" />
								</div>
								
								<div class="form-group">
									<input type="text" class="form-control" placeholder="생년월일 *" id = "userBirth" name = "userBirth" id="kn2" onfocus="(this.type='date')" onblur="(this.type='text')" />
								</div>
								
								<div class="form-group">
									<div class="form-control" id="kn1">
										<label class="radio inline"> <input type="radio" name="userSex" id = "userSex" placeholder="성별 남 *" value="Man"> <!--checked (체크 상태)-->
											<span>남</span> &nbsp;
										</label>
										<label class="radio inline"> <input type="radio" name="userSex" id = "userSex" placeholder="성별 여 *" value="Woman"> <span>여</span>
										</label>
									</div>
								</div>
								
							</div> <!-- div class="col-md-6" -->

							<div class="col-md-6">
								<div class="form-group">
									<form id="signup" method="POST">
										<div class="form-group">
											<input id="userID" title="아이디를 입력하세요." type="text" required name="userName"
											class="form-control" placeholder="아이디 *" maxlength="20">
										</div>
										
										<div class="form-group">
											<input id="userPassword" title="비밀번호(영문,숫자,특수문자 6-20자)" type="password" name="userPassword"
											class="form-control" placeholder="비밀번호(영문,숫자,특수문자 6-20자) *" maxlength="20">
										</div>
										
										<div class="form-group">
											<input id="userPasswordCheck" title="위의 비밀번호와 동일하게 입력하세요." type="password" name="userPasswordCheck"
											class="form-control" placeholder="비밀번호 확인 *" maxlength="20">
										</div>
									</form>
								</div>
								<div class="form-group">
									<input type="tel" class="form-control" placeholder="전화번호 *" id = "userNumber" name = "userNumber" />
								</div>
							</div> <!-- div class="col-md-6" -->

							<div class="col-md-6">
								*개인정보활용동의*
								<div class="form-group">
									<div class="maxl" style="float: left;%;">
										<label class="radio inline"> <input type="radio"
											name="dongE" id = "dongE" value="Yes"> <span>동의</span>
											&nbsp;
										</label> <label class="radio inline"> <input type="radio"
											name="dongE" id = "dongE" value="No"> <span>비동의</span>
										</label>
									</div>

									<div class="container">
										<meta name="viewport" content="width=device-width, initial-scale=1" />
										<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
										<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
										<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
										<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
										<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" />
										<button type="button" class="btn xi-help"
											data-toggle="tooltip" data-placement="right" data-html="true"
											title="*개인정보활용동의*<br>사용자 구분을 위해<br>이름, 생일, 전화번호활용에<br>동의 하십닙니까?"></button>
										<script>
											$("[data-toggle=tooltip]")
													.tooltip()
										</script>
									</div>
								</div>
							</div>

							<div class="col-md-3 offset-xl-3">
								<input type="button" class="btnRegister" id = "btn-signup" value="회원가입" />
								<input type="button" class="btnRegister2" value="취소" onclick="location.href = 'http://172.16.91.106:8080'" />
								<!-- 위 URL은 임시로 사용중이니 추후에 수정 -->
							</div>
						</div><!-- <div class="row register-form"> -->
					</div><!-- <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab"> -->
				</div><!-- <div class="tab-content" id="myTabContent"> -->
			</div><!-- <div class="col-md-9 register-right"> -->
		</div><!-- <div class="row"> -->
	</div><!-- <div class="register"> -->
</body>
</html>

<script type="text/javascript" src="/resources/Signup.js"></script>