<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/5-2_Food_detail.css" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>Food detail</title>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="ex-category">
		<a>FOOD > 헬스 > 닭가슴살</a>
	</div>
	<div class="ex-container">
		<div class="ex-item-container">
			<div class="ex-item">
				<div class="ex-item-info">
					<a href="#"><img class="ex-item-image" src="resources/images/food2.jpg"></a>
					<h3>닭가슴살</h3>
					<span>닭의 갈비 안쪽 가슴 부위에 붙은 살. 기름기가 적어 약간 퍽퍽한 느낌이 나는데, 단백질이 풍부하여 건강식 등에 주로 사용한다.</span>
				</div>
				<div class="ex-desc">
					<span>닭가슴살은 대표적인 고단백, 저지방의 다이어트 식품입니다.
							다이어트 시 부족한 단백질을 보충할뿐 아니라 몸에 필요한 아미노산도 함유되어 있습니다.
							닭가슴살을 미네랄, 비타민, 식이섬유가 풍부한 채소와 함께 먹으면
							포만감이 더욱 커지고 영양상으로도 좋습니다.
					</span>
					<span>
						닭가슴살에도 미네랄과 비타민이 들어 있다고 하는데요.
						백내장과 다른 피부 질환과 같은 여러 문제를 예방하는데 유용한 비타민B를 함유하고 있어,
						소화기관을 개선해주며 심장 질환등을 예방해 준다고 합니다.
					</span>
					<span>영양성분</span>
					<span>탄수화물		0g</span>
					<span>단백질		31g</span>
					<span>지방		3.6g</span>
					<span>열량		164kcal</span>
				</div>
			</div>
			
			<div class="ex-video">
				<iframe width="650" height="500" src="https://www.youtube.com/embed/bPv1587kLBw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
				</iframe>
			</div>
		</div>
		
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>