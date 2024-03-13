<!-- 
화면명 : 글쓰기 화면
작성일 : 2020.11.28
작성자 : 유현민 
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 메뉴 + 배경 -->
<link rel="stylesheet" href="/resources/css/Background.css">
<link rel="stylesheet" href="/resources/css/Menu1.css">
<link rel="shortcut icon" href="/resources/icon/AmongLogo1.ico">
<link rel="stylesheet" href="/resources/css/Menu2.css">

<!--게성글 작성-->
<link rel="stylesheet" href="/resources/css/Bulletin_Board_Write.css">
<script src="//cdn.ckeditor.com/4.15.1/full/ckeditor.js"></script>


<title>어몽어스&nbsp;커뮤니티&nbsp;&#58;&nbsp;글쓰기</title>
</head>
<body>

	<div
		style="overflow: hidden; background-color: #000000; height: auto; float: left; width: 300px;">
		<div class="div2">
			<div style="float: left">
				<a href="index.jsp"> <img src="/resources/img/AmongLogo2.png" width="60"
					height="60" />
				</a>
			</div>
			<div>
				<h3 class="Logh2 texth3">
					<strong><a id="Ltext1" href="index.jsp">어몽어스&nbsp;커뮤니티</a></strong>
				</h3>
			</div>
		</div>

		<div class="div3">
			<div class="Mem1" style="float: left">
				<a>이름</a>
			</div>
			<div class="Mem2">
				<a id="Ltext2" href="user_modify">회원정보</a> <a>&#47;</a> <a id="Ltext3"
					href="#">로그아웃</a>
			</div>
		</div>

		<div class="col-xl-123">
			<div id="admin-sidebar" class="p-x-0 p-y-3">
				<ul class="sidenav admin-sidenav list-unstyled ul1">
					<li><a href="#">게임설명</a></li>
					<li><a href="board_notice">게시판</a></li>
					<li><a href="youtube">어몽어스&nbsp;관련&nbsp;영상&nbsp;모음</a></li>
				</ul>
			</div>
		</div>
		<div class="div1">
			<!-- Sidebar -->
			<ul class="nav sidebar-nav">
				<!-- <li class="sidebar-brand"><a href="#"> Brand </a></li> -->
				<li class="sidebar-brand"><a>
						<form action="#" method="get">
							<div class="input-group">
								<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
								<input class="form-control" id="system-search" name="q" placeholder="검색" required><span class="input-group-btn">
									<button type="submit" class="btn btn-default">
										<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
										<i class="fas fa-search"></i>
									</button>
								</span>
							</div>
						</form>
				</a></li>
				<li><a href="board_notice">공지사항</a></li>
				<li><a href="board_inquiries">문의사항</a></li>
				<li><a href="board_free">자유</a></li>
				<li><a href="board_tips">꿀&nbsp;팁</a></li>
				<li><a href="board_chobo">초보</a></li>
			</ul>
		</div>
		<!-- /#admin-sidebar -->
	</div>

	<div class="div_Background1">
		<div class="div_Background2">
			<form class="form123">

				<select class="form-control1">
					<option>문의사항</option>
					<option selected="">자유</option>
					<option>꿀&nbsp;팁</option>
					<option>초보</option>
				</select> 
				
				<input type="text" class="form-control2" placeholder="제목">
				
				<div class="textarea123">
					<textarea name="editor1" id="editor1" rows="10" cols="80"></textarea>
					<script>
	                	// Replace the <textarea id="editor1"> with a CKEditor 4
	                	// instance, using default configuration.
	                	CKEDITOR.replace( 'editor1' );
	            	</script>
				</div>
				<input type="button" class="btnRegister4" value="완료">
				<input type="button" class="btnRegister5" value="취소" onclick = "history.back(-1)">
			</form>
		</div>
	</div>

</body>
</html>