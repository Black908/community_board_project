//alert("test");

/*$("#test").on("click", function() {
	alert("아이디 클릭");
})*/
//아이디는 한 페이지에 1개만 존재

/*$(".test").on("click", function() {
	alert("클래스 클릭");
})*/
//클래스는 여러개 존재 보통 css에 사용

/*$("[name=test]").on("click", function() {
	alert("이름 클릭");
})*/
//이름도 여러개 존재

//$("[name=login]").on("click", function() {
//	$.ajax({
//	    url: "/test.json", 							// 클라이언트가 요청을 보낼 서버의 URL 주소
//	    data: { name: "홍길동", 						// HTTP 요청과 함께 서버로 보낼 데이터
//				type: $("#input").val() },               
//	    type: "POST",                             // HTTP 요청 방식(GET, POST)
//	    dataType: "json",                         // 서버에서 보내줄 데이터의 타입
//		success : function(rsData) {
//			/*if(rsData.test == "result") {
//				alert("result");
//			}*/
//			console.table(rsData);
//			for(i in rsData) {
//				var data = rsData[i];
//				$("#cityTable").append("<tr><td>" + data.ID + "</td><td>" + data.Name + "</td></tr>");
//			}
//		}
//	})
//})

$("#btn-login").on("click", function() {
	$.ajax({
	    url: "pass.json",// 클라이언트가 요청을 보낼 서버의 URL 주소
	    data: { 
				login_id: $("#login").val(),
				login_pw: $('#password').val()
			}, 					// HTTP 요청과 함께 서버로 보낼 데이터
	    type: "POST",                             // HTTP 요청 방식(GET, POST)
	    dataType: "json",                         // 서버에서 보내줄 데이터의 타입
		success : function(rsData) {
			console.table(rsData);
			if(rsData.resultCnt == 1){
				alert(rsData.result);
				window.location.href = 'http://172.16.91.106:8080/main.html';
			}else{
				alert(rsData.result);
				return false;
			}
			/*for(i in rsData) {
				var data = rsData[i];
				$("#cityTable").append("<tr><td>" + data.ID + "</td><td>" + data.Name + "</td></tr>");
			}*/
		}
	});
})


/*
$("input").val();
$("input").val("이민현 병신");


$("선택자").text();
"  The time on the server is 2020년 11월 21일 오후 8시 15분 17초 KST. "
$("선택자").text("sdfdsfdsfd");


 data: { name: "홍길동",
		 2번째 key : 값 },

*/

	/*form을 추가한다.
	var newForm = $('<form></form>');
	form에 대한 속성 설정 
	newForm.attr("name","newForm");
	newForm.attr("method","post");
	newForm.attr("action","https://ifuwanna.tistory.com/196");

	form에 들어갈 데이터
	newForm.append($('<input/>', {type: 'hidden', name: 'data1', value:'value1' }));
	newForm.append($('<input/>', {type: 'hidden', name: 'data2', value:'value2' }));

	body에다가 이 form을 추가
	newForm.appendTo('body');

	추가한 즉시 submit 시킨다
	newForm.submt();*/
	
	/*
	즉시 form submit 시키는 코드
	
	*/