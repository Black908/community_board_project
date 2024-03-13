<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 메뉴 + 배경 -->
<link rel="stylesheet" href="/resources/css/Background.css">
<link rel="stylesheet" href="/resources/css/Menu1.css">
<link rel="shortcut icon" href="/resources/icon/AmongLogo1.ico">
<link rel="stylesheet" href="/resources/css/Menu2.css">

<!-- 글 내용 -->
<link rel="stylesheet" href="/resources/css/Bulletin_Board_Contents1.css">

<!--아이콘-->
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
<!--좋아요 아이콘-->
<link rel="stylesheet" href="/resources/css/Good_Bootstrap1.css">
<link rel="stylesheet" href="/resources/css/Good_Icons.css">
<link rel="stylesheet" href="/resources/css/Good_Bootstrap2.css">

<!-- 소메뉴 -->
<link rel="stylesheet" href="/resources/css/Content_Menu.css">

<!-- 댓글 -->
<link rel="stylesheet" href="/resources/css/Comments.css">

<title>게시판&nbsp;:&nbsp;(제목)</title>
</head>
<body>

	<div
		style="overflow: hidden; background-color: #000000; height: auto; float: left; width: 300px;">
		<div class="div2">
			<div style="float: left">
				<a href="index.jsp"> <img src="/resources/img/AmongLogo2.png" width="60" height="60" />
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
				<a id="Ltext2" href="user_modify">회원정보</a> <a>&#47;</a> <a id="Ltext3" href="#">로그아웃</a>
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
								<input class="" id="system-search" name="q" placeholder="검색" required><span class="input-group-btn">
									<button type="submit" class="">
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
	</div>

	<div class="div_Background3">
		<div class="div_Background4">
			<nav class="btn-pluss-wrapper">
				<div href="#" class="btn-pluss">
					<ul>
						<li><a href="#about">삭제하기</a></li>
						<li><a href="#blog">수정하기</a></li>
					</ul>
				</div>
			</nav>
			<ol class="grid">
				<li class="grid__item">
					<button class="icobutton">
						<span class="fa fa-thumbs-up"></span>
					</button>
				</li>
			</ol>
			<script src="../JS/Good_Icons_Animation1.js"></script>
			<script src="../JS/Good_Icons_Animation2.js"></script>

			<div class="Category123">자유</div>
			<div class="title123">제목</div>
			<div class="date123">2020.01.01</div>
			<div class="view123">
				<i class="fas fa-eye"></i>&nbsp;&nbsp;<a>1</a>
			</div>
			<div class="good_bnt123">
				<i class="fas fa-thumbs-up"></i>&nbsp;&nbsp;1
			</div>
			<div class="Nickname123">닉네임</div>
			<div class="content123">
				<div class="content123_2">내용</div>
			</div>

			<div class="container">
				<div class="comments">
					<div class="comments-details">
						<span class="total-comments comments-sort">댓글&nbsp;1</span>
					</div>
					<div class="comment-box  add-comment">
						<span class="commenter-pic"> </span>

						<textarea class="tab111" placeholder="깨끗한 댓글 문화를 위해 타인에게 불쾌한 단어를 사용 시 관리자에 의해 삭제 조치 될 수 있습니다. (1000자 제한)" name="Add Comment" maxlength="1000"></textarea>
						<button type="submit" class="btn point111 butt111 but111 bisot111">전송</button>
					</div>
					<div class="comment-box">
						<span class="commenter-pic"> </span> <span class="commenter-name">
							<a class="a111">김둘리</a> <span class="comment-time">2020-01-01&nbsp;|&nbsp;22:11</span>
						</span>
						<button type="submit" class=" point111 butt111 but222 but333 bisot111" style="margin-left: 15px;">삭제</button>
						<button type="submit" class=" point111 butt111 but222 bisot111">수정</button>

						<p class="comment-txt">댓글 입니다.</p>
						<div class="comment-meta">

							<button class="bisot111 point111 butt111 but111 comment-like">
								<i class="far fa-thumbs-up"></i>&nbsp;12</button>
							<button class="bisot111 point111 butt111 but111 comment-dislike">
								<i class="far fa-thumbs-down"></i>&nbsp;10</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>