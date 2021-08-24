<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/1_Main.css?ver=1" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width,initial-scale=1" charset="UTF-8">
<title>Main</title>
<style type="text/css">
	
	body{background-color: #fff;}
	a{
		text-decoration:none;
	}
	a:visited,a:hover,a:link{
		color:black;
	}
	.banner{
		display:flex;
		width:100%;
		margin:auto;
		
	}
	
	.banner_img{
		width:100%;
		height:300px;
	}
	
	.contents_container{
		display:flex;
		flex-direction:column;
		width:75%;
		margin:auto;
		padding:10px;
		text-align:center;
		
	}
	.contents_sub{
		display:flex;
		flex-direction:column;
		border: 1px solid #f6f6f6;
		border-bottom: 1px solid gray;
		border-right: 2px solid gray;
		background-color:#f6f6f6;
		margin-bottom:30px;
	}
	.contents_sub a{
		margin-top:20px;
		margin:10px;
	}
	.contents-icon{
		margin:auto;
		margin-top:5px;
		padding:20px;
		box-sizing: border-box;
		border: 3px solid lightgreen;
		border-radius:10px;
		background-color:#fff;
	}
	.contents-icon i{
		font-size:25px;
		margin:0;
		padding:0;
	}
</style>

</head>
<body>


	<jsp:include page="Top.jsp"></jsp:include>

	<div class="slideshow-container">
		
		<div class="mySlides fade">
			<div class="numbertext">1 / 4</div>
			<img src="resources/images/banner-2.jpg" style="width:100%; height:500px;">
			<div class="text">Caption Text</div>
		</div>
		
		<div class="mySlides fade">
			<div class="numbertext">2 / 4</div>
			<img src="resources/images/banner-1.jpg" style="width:100%; height:500px;">
			<div class="text">Caption Two</div>
		</div>
		
		<div class="mySlides fade">
			<div class="numbertext">3 / 4</div>
			<img src="resources/images/banner-5.jpg" style="width:100%; height:500px;">
			<div class="text">Caption Three</div>
		</div>

		<div class="mySlides fade">
			<div class="numbertext">4 / 4</div>
			<img src="resources/images/banner-7.jpg" style="width:100%; height:500px;">
			<div class="text">Caption Four</div>
		</div>
		
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>	
	</div>	
	<br>
	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(1)"></span>
		<span class="dot" onclick="currentSlide(2)"></span>
		<span class="dot" onclick="currentSlide(3)"></span>
		<span class="dot" onclick="currentSlide(4)"></span>
	</div>

	<div class="content">
	
		<!-- <div class="banner">
			<div>
				<img class="banner_img" alt="이곳은 베너" src="../image/city2.jpg">
				<div>
					
				</div>
			</div>
		</div> -->
		
		<div class="contents_container">
			<div class="contents_sub">
				<div class="contents-icon">
					<i class="fas fa-running"></i>
				</div>
				<a href="exercise.do">Exercise</a>
			</div>
			<div class="contents_sub">
				<div class="contents-icon"><i class="fas fa-utensils"></i></div>
				<a href="food.do">Food</a>
			</div>
			<div class="contents_sub">
				<div class="contents-icon"><i class="far fa-calendar-alt"></i></div>
				<a href="routine.do">Information</a>
			</div>
			<div class="contents_sub">
				<div class="contents-icon"><i class="far fa-clipboard"></i></i></div>
				<a href="board.do">ETC</a>
			</div>
			<div class="contents_sub">
				<div class="contents-icon"><i class="fas fa-bars"></i></div>
				<a href="board.do?cPage=${cPage }">ETC</a>
			</div>
		</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
	
<script>
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
  	showSlides(slideIndex += n);
	}

	function currentSlide(n) {
  	showSlides(slideIndex = n);
	}

	function showSlides(n) {
  		var i;
  		var slides = document.getElementsByClassName("mySlides");
  		var dots = document.getElementsByClassName("dot");
  		if (n > slides.length) {slideIndex = 1}    
  		if (n < 1) {slideIndex = slides.length}
  		for (i = 0; i < slides.length; i++) {
      		slides[i].style.display = "none";  
  		}
  		for (i = 0; i < dots.length; i++) {
      		dots[i].className = dots[i].className.replace(" active", "");
 		}
  	slides[slideIndex-1].style.display = "block";  
  	dots[slideIndex-1].className += " active";
}

</script>
</body>
</html>