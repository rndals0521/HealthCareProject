<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/3-2_Exercise_detail.css?ver=1" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>Excercise</title>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="ex-category">
		<a>헬스 > 이두 > ${evo.e_name }</a>
	</div>
	<div class="ex-container">
		<div class="ex-item-container">
			<div class="ex-item">
				<div class="ex-item-info">
					<a href="#"><img class="ex-item-image" src="resources/images/${evo.e_image }"></a>
					<h3>${evo.e_name }</h3>
					<span>${e_explain }</span>
				</div>
				<div class="ex-desc">
					<span>상완이두근을 발달시키는 운동이다. 벤치에 앉아서 실시하면 상완이두근을 좀 더 고립할 수 있다. 양팔을 동시에 운동하거나 팔을 번갈아가며 운동할 수 있다.</span>
					<span>난이도 초급</span>
					<span>운동부위 위팔 앞</span>
					<span>주운동 근육 부위 상완이두근</span>
				</div>
			</div>
			
			<div class="ex-video">
				<iframe width="650" height="500" src="${evo.e_video }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
				</iframe>
			</div>
		</div>
		
	</div>
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>