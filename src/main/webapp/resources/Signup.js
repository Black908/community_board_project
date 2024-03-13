var save = function() {
	alert("저장 완료!");
};

$(".btnRegister").on("click", function()  {
	
	//이름 입력여부
	/*if ($("#userName").val() == "") {
		alert("Error: 이름은 빈칸이 될 수 없습니다!");
		$("#userName").focus();
		return false;
	}*/
	
	//닉네임 입력여부
	if ($("#userNickName").val() == "") {
		alert("Error: 닉네임은 빈칸이 될 수 없습니다!");
		$("#userNickName").focus();
		return false;
	}
	
	//생년월일 입력여부
	/*if ($("#userBirth").val() == "") {
		alert("Error: 생일은 빈칸이 될 수 없습니다!");
		$("#userBirth").focus();
		return false;
	}
	
	//남녀구분 여부
	if ($("#userID").val() == "") {
		alert("Error: 아이디는 빈칸이 될 수 없습니다!");
		$("#userID").focus();
		return false;
	}*/
	
	//아이디 입력여부
	if ($("#userID").val() == "") {
		alert("Error: 아이디는 빈칸이 될 수 없습니다!");
		$("#userID").focus();
		return false;
	}
	
	//아이디 조건식
	/*var re = /^\w+$/;
	if (!re.test($("#user_ID").val())) {
		alert("Error: 아이디는 문자와 숫자,밑줄만 포함이 가능합니다!");
		$("#user_ID").focus();
		return false;
	}*/
	
	//비밀번호 
	if ($("#userPassword").val() != "") {
		if($("#userPassword").val() == $("#userPasswordCheck").val()) {
		} else {
			alert("Error: 비밀번호가 일치하지않습니다\n 비밀번호를 다시 입력해주세요!");
		}
	} else {
		alert("Error: 비밀번호를 입력해주세요.");
		$("#userPassword").focus();
		return false;
	}
	
	//전화번호 입력여부
	/*if ($("#userNumber").val() == "") {
		alert("Error: 전화번호는 빈칸이 될 수 없습니다!");
		$("#userNumber").focus();
		return false;
	}*/
	
	$.ajax({
	    url: "/signup/signup.json",// 클라이언트가 요청을 보낼 서버의 URL 주소
	    data: { 
				user_id: $("#userID").val(),
				user_pw: $('#userPassword').val(),
				user_nickname: $('#userNickName').val()
			}, 					// HTTP 요청과 함께 서버로 보낼 데이터
	    type: "GET",                             // HTTP 요청 방식(GET, POST)
	    dataType: "number",                         // 서버에서 보내줄 데이터의 타입
		success : function(rsData) {
			if(rsData == 1){
				alert("!회원가입이 밈이처럼 생겼습니다.");
				//http:    +    //     +    아이피:포트      +   /
				var url = window.location.protocol + "//" + window.location.host + "/";
				window.location.href = url + 'main.html';
			}else{
				alert("회원가입이 밈이 주식처럼 되었습니다.");
				return false;
			}
		}
	});
	
//	save();
//	window.location.href = "http://localhost:8080/board/boardList.jsp"
});