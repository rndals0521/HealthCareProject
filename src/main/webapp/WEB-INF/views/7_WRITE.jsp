<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/7_WRITE.css?ver=1" type="text/css" rel="stylesheet">
<link href="resources/css/7-2_Notice_v1.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>게시글 작성</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	function back(f) {
		history.back();
	}
	function write_ok(f) {
		//유효성 검사
		for (var i = 0; i < f.elements.length; i++) {
			if(f.elements[i].value==""){
				if(i==1) continue;
				alert(f.elements[i].name+"를 입력해주세요");
				f.elements[i].focus();
				return;
			}
		}
		f.action="write_ok.do";
		f.submit();
	}
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div id="content-container">
		<form method="post" encType="multipart/form-data">
		<div id="main-container">
			<script></script>
			<script></script>
			<div id="sub-title">
				<div class="title-area">
					<h3 class="sub-title-color"> 게시판 글쓰기 </h3>
					<div id="input_title">
						<input type="text" placeholder="제목을 입력해주세요.">
					</div>
				</div>
				
			</div>
			
				
				
			
			<div id="post-area">
				<script src="//cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
				<textarea class="post_write_area" name="content" cols="100" rows="30" style="height:500px;"></textarea>
				<script type="text/javascript">
					CKEDITOR.replace('content');
				</script>
			</div>
			
			
			<div class="write-area">
					
					<input type="button" value ="뒤로가기" onclick="back(this.form)" />
					<a>파일첨부</a>
					<input type="button" value ="등록" onclick="write_ok(this.form)" />
					<a href="write_ok.do">등록</a>
			</div>
					
			
		</div>
		</form>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>