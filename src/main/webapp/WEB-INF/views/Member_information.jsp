<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/Member_information1.css">
<title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;회원정보</title>
</head>
<body>
<div class="register">
		<div class="row">
			<div class="col-md-3 register-left">
				<a href="Member_information.jsp"><img src="resources/img/AmongLogo.png" alt="" /></a>
				<h1>
					<a href="Member_information.jsp" id="text_logo1"><strong>회원정보</strong></a>
				</h1>
			</div>

			<div class="col-md-9 aaa111 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
					  <div class="row register-form">
                          <div class="ddd111 col-xl-12">
                        <input type="button" class="btnRegister4" value="비밀번호변경" onclick="location.href = 'change_pass'" />
                        </div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="이름 *"
										value="" maxlength="20" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="닉네임 *"
										value="" maxlength="20" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="생년월일 *"
										value="" id="kn2" onfocus="(this.type='date')"
										onblur="(this.type='text')" Disabled/>
								</div>
								<div class="form-group">
									<div class="form-control" id="kn1">
										<label class="radio inline"> <input type="radio"
											name="gender" placeholder="성별 남 *" value="Man" Disabled> <!--checked (체크 상태)-->
											<span>남</span> &nbsp;
										</label> <label class="radio inline"> <input type="radio"
											name="gender" placeholder="성별 여 *" value="Woman" Disabled> <span>여</span>
										</label>
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<form method="POST" action="Login.jsp" onsubmit="return checkForm3(this) && false;">
										<div class="form-group">
											<input id="field_username2" title="아이디를 입력하세요." type="text" required
											pattern="(?=.*\d)\w+.^([a-z0-9_]){6,20}$" name="username" class="form-control"
											placeholder="아이디 *" value="" maxlength="20" Disabled>
										</div>
									</form>
								</div>
								<div class="form-group">
									<input type="tel" class="form-control" placeholder="전화번호 *"
										value="" />
								</div>
							</div>

							<div class="col-md-6">
								*개인정보활용동의*
								<div class="form-group">
									<div class="maxl" style="float: left;%;">
										<label class="radio inline"> <input type="radio"
											name="PrivacyPolicy" value="Yes"> <span>동의</span>
											&nbsp;
										</label> <label class="radio inline"> <input type="radio"
											name="PrivacyPolicy" value="No"> <span>비동의</span>
										</label>
									</div>

									<div class="container">
										<meta name="viewport" content="width=device-width, initial-scale=1" />
										<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"></link>
										<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
										<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
										<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
										<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
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
                        <div class="col-md-3  offset-xl-0 col-xl-6">
                        </div>
                        <div class="col-md-3 offset-xl-0 col-xl-6">
                        <input type="button" class="btnRegister3" value="회원탈퇴" onclick="location.href = '#'" />
                        </div>
							<div class="col-md-3  col-xl-6 offset-xl-0">
								<input type="button" class="btnRegister2" value="취소" onclick = "history.back(-1)" />
                                <input type="submit" class="btnRegister" value="저장" onclick="location.href = '#'" />
							</div>
                        
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
</body>
</html>