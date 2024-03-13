<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/Change_Password1.css">
<title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;비밀번호&nbsp;변경</title>
</head>
<body>
	<div class="register">
		<div class="row">
			<div class="col-md-3 register-left">
				<a href="Change_Password.jsp"><img src="resources/img/AmongLogo.png" alt="" /></a>
				<h1>
					<a href="Change_Password.jsp" id="text_logo1"><strong>비밀번호 변경</strong></a>
				</h1>
			</div>

			<div class="col-md-9 aaa111 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<div class="row register-form">
							<div class="col-md-7 offset-xl-3">
								<form>
									<div class="form-group">
										<input id="field_pwd3" title="기존 비밀번호를 입력하세요." type="password"
											name="pwd1" class="form-control" placeholder="기존 비밀번"
											value="" maxlength="20">
									</div>
									<div class="form-group">
										<input id="field_pwd3"
											title="변경할 비밀번호를 영문,숫자,특수문자 6-20자로 입력하세요." type="password"
											required name="pwd1"
											class="form-control" placeholder="변경 비밀번호(영문,숫자,특수문자 6-20자)"
											value="" maxlength="20">
									</div>
									<div class="form-group">
										<input id="field_pwd4" title="위의 비밀번호와 동일하게 입력하세요."
											type="password" required name="pwd2"
											class="form-control" placeholder="비밀번호 확인" value=""
											maxlength="20">
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-3  col-xl-6 offset-xl-6" style="top: -27px;">
							<input type="button" class="btnRegister2" value="취소"
								onclick="location.href = 'Member_information.jsp'" /> 
								<input type="submit"
								class="btnRegister" value="저장" onclick="location.href = '#'" />
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>