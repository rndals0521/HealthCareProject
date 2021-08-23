<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	header{
		border-bottom: 0.5px solid lightgray;
	}
	
	.top{
		display:flex;
		height:60px;
		background-color: white;
	}
	.top_1{
		float:left;
		width:10%;
		padding:5px;
		font-size:18px;
		padding-left:35px;
		padding-top:15px;

	}
	.top_2{
		display:flex;
		flex-direction:row;
		float:left;
		justify-content: space-around;
		width:50%;
		text-align:center;
		padding:0px;
	}
	.top_3{
		float:left;
		width:40%;
		text-align:right;
		padding:10px;
		padding-right:35px;
		padding-top:15px;
		font-size:16px;
		
	}
	#login{
		background-color:#66CC00;
		color:white;
		border: 5px solid #66CC00;
		border-radius:15px;
		padding:3px;
	}
	#login_state{
		background-color:#66CC00;
		color:white;
		border: 5px solid #66CC00;
		border-radius:15px;
		padding:3px;
	}
	.dropbtn {
		background-color: #fff;
		color: #4CAF50;
		padding: 16px;
		font-size: 18px;
		border:none;
		cursor: pointer;
	}
	.dropdown{
		padding-top:0px;
		position: relative;
		display:inline-block;
	}
	.dropdown-content{
		display:none;
		position:absolute;
		background-color:#f9f9f9;
		min-width: 160px;
		box-shadow: 0px; 8px; 16px; 0px rgba(0,0,0,0.2);
		z-index:1;
	}
	.dropdown-content a{
		color:gray;
		padding: 12px 16px;
		text-decoration: none;
		display:block;
	}
	.dropdown-content a:hover{background-color:#f1f1f1}
	
	.dropdown:hover .dropdown-content{
		display:block;
	}
	.dropdown:hover .dropbtn{
		background-color: lightgray;
	}
	#rt{
		color:black;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#rt").click(function(){
			if("${log_in}"=='1'){
				location.href="routine.do";
			}else{
				alert("로그인이 필요한 서비스입니다.");
				location.href="login.do";
			}
		});
	});
</script>
</head>
<body>
	<header>
		<div class="top">
			<div class="top_1"><a href="main.do" style="color:green;">HealthCare</a></div>
			<div class="top_2">
				<div class="dropdown">
					<button class="dropbtn">Exercise ▼</button>
					<div class="dropdown-content">
						<a href="exercise.do">Excercise List</a>
						<a href="6-1_Information.jsp">Excercise info</a>
						<a id="rt">Routine List</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn">FOOD ▼</button>
					<div class="dropdown-content">
						<a href="food.do">Food List</a>
						<a href="food_my.do">My Food</a>
						<a href="food_cal.do">BMI calc</a>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropbtn">ETC ▼</button>
					<div class="dropdown-content">
						<a href="board.do?cPage=1">Board</a>
						<a href="#">Q&A</a>
						<a href="#">MyPage</a>
					</div>
				</div>
			</div>
			<div class="top_3">
				<c:choose>
					<c:when test="${log_in=='1' }">
						<a id="login_state">${log_name }님</a> <a id="login_state" href="logout.do">로그아웃</a>
					</c:when>
					<c:otherwise>
						<a id="login" href="login.do">로그인/회원가입</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>
</body>
</html>