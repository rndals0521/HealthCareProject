<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-3_Routine_detail.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Routin-detail</title>
<script type="text/javascript">
	function back(f) {
		history.back();
	}
</script>
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
					<div>
						<span>[루틴명 : ${rvo.r_name }]</span>
						<br><br>
						<span>분류 : ${rvo.r_kinds }</span>
						<br><br>
						<span>날짜 : ${rvo.r_date }</span>
					</div>
					<div class="rt-textarea">
						<ul>
						
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;${rvo.r_con1 }</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;${rvo.r_con2 }</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;${rvo.r_con3 }</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;${rvo.r_con4 }</li>
							<li><i class="fas fa-walking"></i>&nbsp;&nbsp;${rvo.r_con5 }</li>
						
						</ul>
					</div> 
									
				</div>
				
				<div class="rt-btn">
				<form method=POST>
					<div class="rt-date">
						
					</div>
					<div class="rt-btn-list">
						<input type="button" value ="뒤로가기" onclick="back(this.form)" />
						<input type="button" value ="수정" onclick="back(this.form)" />
						<input type="button" value ="삭제" onclick="back(this.form)" />
					</div>
					
				</form>
				</div>
				
			</div>
			
		</div>
	</div>
	
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>