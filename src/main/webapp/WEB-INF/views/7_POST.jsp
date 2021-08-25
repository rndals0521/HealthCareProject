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
					<a>자유 게시판</a>
					
					<h3 class="sub-title-color">게시글 제목 Ex sample 1</h3>
				</div>
				<div class="me-feed"></div>
			</div>
			<div class="list-category">
				<div class="category-area">
					<div class="All-page">
						<a id="goAll">전체</a>
					</div>
					<div class="Notice-page">
						<a id="goNotice">공지사항</a>
					</div>
					<div class="Free-page">
						<a id="goFree">자유게시판</a>
					</div>
					<div class="QA-page">
						<a id="goQA">Q&A</a>
					</div>
				</div>
				
				<div class="write-area">
					<a><input type="checkbox"/>공지숨기기</a>
					<a href="write.jsp"><i class="fas fa-pen"></i>글쓰기</a>
				</div>
			</div>
			
			<div class="article-board" id="upperArticle">
				<table>
					<!-- <colgroup>
						<col style="width: 88px;">
						<col style="width: 118px;">
						<col style="width: 80px;">
						<col style="width: 68px;">
						<col style="width: 68px;">
					</colgroup>
					<thead>
						<tr id="normalTableTitle">
							<th> </th>
							<th scope="col"><span class="article-title">제목</span></th>
							<th scope="col" class="th-name">작성자</th>
							<th scope="col">작성일</th>
							<th scope="col">조회</th>
						</tr>
					</thead> -->
					
					<div id="out-Notice"></div>
					
					<div id="out-Board"></div>
					
				</table>
			</div>
			
			<!-- <div class="article-board">
				<div id="out-Board">
				
				</div>
			</div> -->
			
			
			<div class="prev-next">
				<span class="blind">페이지 네비게이션</span>
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
				<a href="#"><span class="m-tcol-c">다음</span></a>
			</div>
			
			<div class="list-search">
				<form action="result.jsp" method="post">
				      <select class="form_search" name="search" required>
				         <option value="0">:선택하기:</option>
				         <option value="1">번호로 찾기</option>
				         <option value="2">아이디로 찾기</option>
				         <option value="3">이름으로 찾기</option>
				         <option value="4">나이로 찾기</option>
				      </select>
				      <div class="input-search-area">
						<div class="input-component" style="width:200px">
							<input type="text" id="query" name="query" placeholder="검색어를 입력해주세요" value onkeydown="">
						</div>
				      	<input class="btn-search-green" type="submit" value="검색" onclick="">
						<!-- <button onclick="" class="btn-search-green">검색</button> -->
					</div>
   					</form>
				<br>
				
				
				<form name="frmSearch" action onsubmit="return false;">
					<input type="hidden" name="searchdate" id="searchdate" value="all">
					
					<div class="select-component">
						<a href="#" onclick="nhn.search.toggleBoxLayer('divSearchDate');return false;" 
						  id="currentSearchDate" class="select_box">
						  전체기간
						  <i class="fas fa-angle-down"></i> 
						</a>
						<ul class="select-list" style="width:192px;max-height:295px;">
							<li><a>1주일</a></li>
							<li><a>4주일</a></li>
							<li><a>한달</a></li>
							<li><a>1년</a></li>
						</ul>
					</div>
					
					<input type="hidden" name="searchBy" id="searchBy" value="0">
					
								  					
   					
					<div class="select-component">
						<a href="#" onclick="nhn.search.toggleBoxLayer('divSearchDate');return false;" 
						  id="currentSearchDate" class="select_box">
						  제목+내용
						  
						</a>
						<ul class="select-list" style="width:192px;max-height:295px;">
							<li><a>제목+내용</a></li>
							<li><a>제목만</a></li>
							<li><a>작성자</a></li>
							<li><a>댓글내용</a></li>
						</ul>
					</div>
					<div class="input-search-area">
						<div class="input-component" style="width:200px">
							<input type="text" id="query" name="query" placeholder="검색어를 입력해주세요" value onkeydown="">
						</div>
						<button onclick="" class="btn-search-green">검색</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>