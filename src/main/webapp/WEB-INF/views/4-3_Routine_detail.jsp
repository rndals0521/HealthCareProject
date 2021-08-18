<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-3_Routine_detail.css?ver=1" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Routin-detail</title>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="container">
		
		
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
				<div class="rt-detail-top">
					<span>[루틴명 : 나의 어깨운동]</span>
					<div class="rt-textarea">
						<ul>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;팔굽혀펴기 2세트</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;턱걸이 2세트</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;사이드레터럴레이즈 3세트</li>
						</ul>
					</div> 
									
				</div>
				
				<div class="rt-btn">
					<div class="rt-date">
						<input type="date">
					</div>
					<div class="rt-btn-modify">
						<a>수정</a>
					</div>
					<div class="rt-btn-delete">
						<a>삭제</a>
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