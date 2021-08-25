<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-4_Routine_write.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Routine Write</title>
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
			
			<div class="cal">
				<table>
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
					<tr>
						<td>1</td>
						<td>2</td>
						<td>3</td>
						<td>4</td>
						<td>5</td>
						<td>6</td>
						<td>7</td>
					</tr>
					<tr>
						<td>8</td>
						<td>9</td>
						<td>10</td>
						<td>11</td>
						<td>12</td>
						<td style="background-color:skyblue;">13</td>
						<td>14</td>
					</tr>
					<tr>
						<td>15</td>
						<td>16</td>
						<td>17</td>
						<td>18</td>
						<td>19</td>
						<td>20</td>
						<td>21</td>
					</tr>
					<tr>
						<td>22</td>
						<td>23</td>
						<td>24</td>
						<td>25</td>
						<td>26</td>
						<td>27</td>
						<td>28</td>
					</tr>
					<tr>
						<td>29</td>
						<td>30</td>
						<td>31</td>
					</tr>
				</table>
			</div>
			
			<div class="rt-detail">
				<form method="post">
					<div class="rt-detail-top">
						<div>
							<span>[루틴명]   <input type="text" name="r_name" placeholder="루틴명을 입력하세요."></span>
							<br><br>
							<input type="radio" value="day" name="r_kinds"> day
							<input type="radio" value="week" name="r_kinds"> week
							
						</div>
						<div class="rt-textarea">
							<input type="text" name="r_con1" placeholder="운동과 세트를 입력하세요">
							<input type="text" name="r_con2" placeholder="운동과 세트를 입력하세요">
							<input type="text" name="r_con3" placeholder="운동과 세트를 입력하세요">
							<input type="text" name="r_con4" placeholder="운동과 세트를 입력하세요">
							<input type="text" name="r_con5" placeholder="운동과 세트를 입력하세요">
							
						</div> 
										
					</div>
					
					<div class="rt-btn">
						<div class="rt-date">
							<input type="date" id="date">
						</div>
						<div class="rt-btn-save">
							
							<input type="button" value="저장" onclick="insert_ok(this.form)"/>
							<input type="reset" value="취소"/>
						</div>
						
					</div>
				</form>
			</div>
			
		</div>
	</div>
	
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$('#date').change(function(){
		var date = $('#date').val();
	});
	
	function insert_ok(f) {
		var date = $('#date').val();
		f.action="insertroutine_ok.do?r_date="+date;
		f.submit();
	}
</script>

</body>
</html>