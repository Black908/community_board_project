<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="/resources/css/Personal_identification1.css">
<title>어몽어스&nbsp;커뮤니티&nbsp;:&nbsp;본인확인</title>
</head>
<body>
 <div class="register">
		<div class="row">
<div class="col-md-3 register-left">
				<a href="Personal_identification.jsp"><img src="resources/img/AmongLogo.png" alt="" /></a>
				<h1>
					<a href="Personal_identification.jsp" id="text_logo1"><strong>회원정보</strong></a>
				</h1>
			</div>

			<div class="col-md-9 aaa111 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
					  <div class="container"></div>
					  <div class="row register-form">
<div style="width: 100%; margin-bottom: 34px;" >
    <h4 style="margin-left: 44%;"><b>본인확인</b></h4>
    <a style="margin-left: 25%;">회원님의 소중한 개인정보 보호를 위해 본인인증을 진행합니다.</a>
                        </div>
		  <form method="POST" style="width: 100%"   action="Login.jsp">
			<div style="width: 100%">
										  <input id="field_pwd3" title="비밀번호" type="password" class="form-control" placeholder="비밀번호" value="" style="width: 300px;   margin-left: 33%;" maxlength="20">
                                      </div>
         <div style="width: 100%">
           <input type="submit" class="btnRegister" value="확인" style="margin-left: 41%;" onclick="location.href = '#'" />
         </div>        
        <div style="width: 100%">
		  <input type="button" class="btnRegister2" value="취소" style="margin-left: 41%;" onclick = "history.back(-1)" />
         </div>                       
        </form>         
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
</body>
</html>