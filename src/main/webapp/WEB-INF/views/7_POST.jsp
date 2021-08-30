<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/7_POST.css" type="text/css" rel="stylesheet">
<link href="resources/css/7-2_Notice_v1.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>게시글 제목</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div id="content-container">
		<div id="main-container">
			<script></script>
			<script></script>
			<div id="sub-title">
				<div class="title-area">
					<a>> 자유 게시판</a>
					<br><br>
					<h3 class="sub-title-color">인바디 평가 좀 해주세요.</h3>
					<div id="profile">
						<i class="fas fa-user-circle"></i>
						<div id="profile-user">
							<span style="font-weight:bold">홍길동</span>
							<span>2021.08.25</span>
						</div>
					</div>
				</div>
				<div class="me-feed"></div>
			</div>
			
				
				
			
			<div id="post-area">
				<div class="post-text">
					<span>
						헬스시작한지 지금1년6개월이됐습니다키는 180이고 맨처음 운동했을시 몸무게는 78키로골격근은 37.6에 체지방률 14퍼였습니다. 그리고 벌크업한답시고 엄청 먹어대고...해서 지금1년6개월이지나 몸무게 94.4키로에 골격근42.8 체지방률 20퍼가나왔는데 제가 운동을잘하고있는걸까요...골격근량은 잘올른건지도궁금하고 너무체지방이는건아닌지도궁금해서요ㅜㅜ 혹시나 헬스꿀팁 같은것도 공유해주시면 감사하겠습니다!
					</span>
				</div>
			</div>
			
			
			<div class="write-area">
					<a>목록</a>
					<a>댓글</a>
					<a href="write.jsp"><i class="fas fa-pen"></i>글쓰기</a>
			</div>
		
			<div class="CommentBox">
				<h4>댓글</h4>
				<ul class="comment_list">
					<li class="comment_item">
						<div class="comment_contents">
							<i class="fas fa-user-circle"></i>
							<div id="profile-user">
								<span style="font-weight:bold">감수광</span>
								<span>ㅋㅋㅋ 이 게시물 정말 도움되네요.</span>
							</div>
						</div>
					</li>
					<li class="comment_item">
						<div class="comment_contents">
							<i class="fas fa-user-circle"></i>
							<div id="profile-user">
								<span style="font-weight:bold">감수광</span>
								<span>ㅋㅋㅋ 이 게시물 정말 도움되네요.</span>
							</div>
						</div>
					</li>
					<li class="comment_item">
						<div class="comment_contents">
							<i class="fas fa-user-circle"></i>
							<div id="profile-user">
								<span style="font-weight:bold">감수광</span>
								<span>ㅋㅋㅋ 이 게시물 정말 도움되네요.</span>
							</div>
						</div>
					</li>
					
					<li class="comment_item"></li>
				</ul>
				
				<div class="comment_writer">
					<div class="comment_inbox">
						<textarea placeholder="댓글을 남겨주세요." rows="1" class="comment_inbox_text" style="overflow: hidden; overflow-wrap: break-word; height: 17px;"></textarea>
					</div>
					<div class="comment_insert">
						<a href="#" role="button" class="btn_comment">등록</a>
					</div>
				</div>
			</div>
			
			
			
		</div>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>