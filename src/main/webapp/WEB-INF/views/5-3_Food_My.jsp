<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/5-3_Food_My.css" type="text/css" rel="stylesheet">

<meta charset="UTF-8">
<title>MY 식단</title>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="container">
		<div class="menu">
			<div class="menu-my">
				<a href="food_my.do"> My 식단 </a>
			</div>
			<div class="menu-myR">
				<a href="food_share.do"> 식단공유 </a>
			</div>
			<div class="menu-share">
				<a href="food_cal.do"> 계산기 </a>
			</div>
			<div class="menu-help">
				<a> HELP </a>
			</div>
			<div class="make-btn">
				<a> 제작 </a>
			</div>
		</div>
		
		<!--  -->
		<div class="r-container">
			<div class="r-day">
				<div class="r-day-title">단기식단</div>
				<div class="r-day-rt">
					<div class="r-day-rtitem">
						<a>[ 다이어트식단1 ]</a>
						<a>수정 | 삭제</a>
					</div>
					<div class="r-day-rtitem">
						<a>[ 다이어트식단2 ]</a>
						<a>수정 | 삭제</a>
					</div>
					<div class="r-day-rtitem">
						<a>[ 다이어트식단3 ]</a>
						<a>수정 | 삭제</a>
					</div>
					<div class="r-day-rtitem">
						<a>[ 다이어트식단4 ]</a>
						<a>수정 | 삭제</a>
					</div>
					<div class="r-day-rtitem">
						<a>[ 벌크업식단 ]</a>
						<a>수정 | 삭제</a>
					</div>
				</div>
			</div>
			
			<div class="r-week">
				<div class="r-week-title">장기식단</div>
				<div class="r-week-rt">
					<div class="r-week-rtitem">
						<a>[ 간헐적단식 ]</a>
						<a>수정 | 삭제</a>
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