<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ margin:0px; padding:0px;}
	a{
		text-decoration:none;
	}
	a:visited,a:hover,a:link{
		color:black;
	}
	
	.main-footer{
		position: relative;
		bottom:0;
		background-color: black;
		color:#8c8e90;
		width:100%;
		height: 120px;
		padding: 20px;
		padding-top:5px;
		box-sizing: border-box;
		line-height: 1.3;
		z-index: 110;
		
		
	}
	.div_footer{
		background-color:black;
		color:white;
		width:33.3%;
		float:left;
		font-size:5px;
	}
	.p_footer{
		text-align:center;
		font-size:5px;
		margin:0;
	}
</style>
</head>
<body>
	<footer class="main-footer">
		<div class="div_footer">
			<h3>Footer</h3>
			<p>this is footer  review please</p>
			<p>Powered by <a href="#" target="_blank">YOUTOVIEW</a></p>
		</div>
		
		<div class="div_footer">
			<h3>Blog posts</h3>
			<ul>
				<li>Lorem</li>
				<li>Ipsum</li>
				<li>Jeju</li>
				<li>Hello</li>
			</ul>
		</div>
		<div class="div_footer">
			<h3>Health care</h3>
			<ul>
				<li>body</li>
				<li>physical</li>
				<li>food</li>
				<li>tool</li>
			</ul>
		</div>
		
		<div class="p_footer">서울 특별시 마포구 양화로 첨단빌딩 7층 1강의장<br>
		 	02-1512-1512 / 012-311-1231<br>
		 	저희 사이트를 방문해주셔서 감사합니다.
		 </div>
	</footer>
</body>
</html>