<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-1_Routine2.css?ver=1" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<meta charset="UTF-8">
<title>Routine</title>
<style>
.ui-datepicker{ font-size: 17px; width: 1000px; height:500px;}
.ui-datepicker select.ui-datepicker-month{ width:30%;  font-size: 15px; margin-right:5px; }
.ui-datepicker select.ui-datepicker-year{ width:40%; font-size: 15px; }
</style>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="container">
		<div class="menu">
			<div class="menu-my">
				<a href="routine.do"> 내 일정 </a>
			</div>
			<div class="menu-myR">
				<a href="myroutine.do"> My루틴 </a>
			</div>
			<div class="menu-share">
				<a href="routine_share.do"> 루틴공유 </a>
			</div>
			<div class="menu-help">
				<a> HELP </a>
			</div>
			<div class="make-btn">
				<a href="routine_write.do"> 제작 </a>
			</div>
		</div>
		
		<div class="cal-container">
			<div class="cal-day">
				<h1>2021</h1>
				<span>Fri</span>
				<span>Jul 02</span>
				
				<span> < 이동 > </span>
			</div>
			<div class="cal">
				<h2> 날짜 선택 </h2>
				<input type="text" id="Date">
				<div id ="day-contents">
					
				</div>
			</div>
			
		</div>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() { 
		$( "#Date" ).datepicker({
			showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다. 
			
			changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다. 
			changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다. 
			minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다. 
			nextText: '다음 달', // next 아이콘의 툴팁. 
			prevText: '이전 달', // prev 아이콘의 툴팁. 
			numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다. 
			stepMonths: 1, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가. 
			yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가. 
			showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. 
			currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널 
			closeText: '닫기', // 닫기 버튼 패널 
			dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식. 
			showAnim: "slide", //애니메이션을 적용한다. 
			showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
			dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식. 
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], //월의 한글표시
			yearRange: "2010:2021" //연도 범위

			
		}); 
		
		$('#Date').datepicker('setDate', 'today');
	});

</script>
</body>
</html>