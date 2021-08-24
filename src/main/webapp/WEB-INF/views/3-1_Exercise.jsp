<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/3-1_Exercise.css" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>Excercise</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	// 아직 오류가 많음 frame부분 공간이 남는것같고 왜 li가 이렇게 많이 반복되냐고
	$(function(){
		var list = $("#banner");
		var show_num = 4;
		var num = 0;
		var total = $(".list-category").length;
		var li_width = $("li").width() + 47;
		
		var c_obj = $("li:lt("+show_num+")").clone();
		list.append(c_obj);
		
		$("#prev").on("click",function(){
			if(num == 0){
				num = total;
				list.css("margin-left",num);
			}
			num--;
			list.stop().animate({marginLeft : -li_width*num+"px"},500);
			return false;
		});
		$("#next").on("click",function(){
			
			if(num == total){
				  num=0;
				  list.css("margin-left",-li_width*num+"px");
			} 
			console.log(li_width);
			num++;
			list.stop().animate({marginLeft : -li_width*num+"px"},500);
			return false;
		});
	});
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="ex-category">
		<a href="exercise.do?category=health&part=chest">헬스</a>
		<a href="exercise.do?category=yoga&part=yoga">요가</a>
		<a href="exercise.do?category=pilates&part=all">필라테스</a>
	</div>
	
	<!--  -->
	<div class="ex-container">
		
		
		<div class="list-container">
			<div class="prev_btn">
				<a href="#" id="prev"> <img src="resources/images/left.png">  </a>
			</div>
			<div id="frame">
				<ul id="banner">
					<!-- 
					<li class="list-category">
						<a href="exercise.do?category=health&part=all"><img src="resources/images/back_s.png">전체</a>
					</li>
					 -->
					<li class="list-category">
						<a href="exercise.do?category=health&part=biceps"><img src="resources/images/arm2_s.png">이두</a>
					</li>
					<li class="list-category">
						<a href="exercise.do?category=health&part=chest"><img src="resources/images/back_s.png">가슴</a>
					</li>
					<li class="list-category">
						<a href="exercise.do?category=health&part=back"><img src="resources/images/sungmo_s.png">등</a>
					</li>
					<li class="list-category">
						<a href="exercise.do?category=health&part=lowerBody"><img src="resources/images/foot_s.png">하체</a>
					</li>
					<li class="list-category">
						<a href="exercise.do?category=health&part=shoulder"><img src="resources/images/arm2_s.png">어깨</a>
					</li>
					<li class="list-category">
						<a href="exercise.do?category=health&part=Abs"><img src="resources/images/bae_s.png">복근</a>
					</li>
					
				</ul>
			</div>
			<div class="next_btn">
				<a href="#" id="next"> <img src="resources/images/right.png">  </a>
			</div>
		</div>
		
		
		
		<div class="ex-item-container">
			<div class="ex-item">
				<c:forEach var="k" items="${elist }">
				
					<div>
						<div class="badge">
							${k.e_name }
						</div>
						<a href="ExerciseDetail.do?eid=${k.eid }">
						<img class="ex-item-image" src="resources/images/${k.e_image }">
						</a>
					</div>
				</c:forEach>
				
				<!-- <div>
					<div class="badge">
						해머컬
					</div>
					<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-hammer_curl.jpg"></a>
				</div>
				<div>
					<div class="badge">
						프리처컬
					</div>
					<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-priture_curl.jpg"></a>
				</div> -->
			</div>
			<!-- <div class="ex-item">
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-concentration_dumbbell_curls.png"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-sitted_dumbbel_curl.jpg"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-priture_curl.jpg"></a>
			</div>
			<div class="ex-item">
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-hammer_curl.jpg"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-sitted_dumbbel_curl.jpg"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-sitted_dumbbel_curl.jpg"></a>
			</div>
			<div class="ex-item">
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-hammer_curl.jpg"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-sitted_dumbbel_curl.jpg"></a>
				<a href="ExerciseDetail.do"><img class="ex-item-image" src="resources/images/bicep-sitted_dumbbel_curl.jpg"></a>
			</div> -->
		</div>
	</div>
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>