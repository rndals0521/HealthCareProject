<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/5-1_Food.css" type="text/css" rel="stylesheet">
<meta charset="UTF-8">
<title>Food</title>
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
		<a href="#">FOOD</a>
	</div>
	<div class="ex-container">
		<div class="list-container">
			<div class="prev_btn">
				<a href="#" id="prev"> <img src="resources/images/left.png">  </a>
			</div>
			<div id="frame">
				<ul id="banner">
					<li class="list-category"><a><img src="resources/images/protein.jpg">헬스</a></li>
					<li class="list-category"><a><img src="resources/images/salad.jpg">Diet</a></li>
					<li class="list-category"><a><img src="resources/images/protein.jpg">건강식</a></li>
					<li class="list-category"><a><img src="resources/images/salad.jpg">기능성</a></li>
					<li class="list-category"><a><img src="resources/images/protein.jpg">대체식품</a></li>
					<li class="list-category"><a><img src="resources/images/salad.jpg">벌크업</a></li>
				</ul>
			</div>
			<div class="next_btn">
				<a href="#" id="next"> <img src="resources/images/right.png">  </a>
			</div>
		</div>
		
		
		<div class="ex-item-container">
			<div class="ex-item">
				<a href="food_detail.do"><img class="ex-item-image" src="resources/images/food1.jpg"></a>
				<a href="food_detail.do"><img class="ex-item-image" src="resources/images/food2.jpg"></a>
				<a href="food_detail.do"><img class="ex-item-image" src="resources/images/food3.jpg"></a>
			</div>
			<div class="ex-item">
				<a href="#"><img class="ex-item-image" src="resources/images/food4.jpg"></a>
				<a href="#"><img class="ex-item-image" src="resources/images/food5.gif"></a>
				<a href="#"><img class="ex-item-image" src="resources/images/food6.jpg"></a>
			</div>
			<div class="ex-item">
				<a href="#"><img class="ex-item-image" src="resources/images/food7.jpg"></a>
				<a href="#"><img class="ex-item-image" src="resources/images/food7.jpg"></a>
				<a href="#"><img class="ex-item-image" src="resources/images/food7.jpg"></a>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>