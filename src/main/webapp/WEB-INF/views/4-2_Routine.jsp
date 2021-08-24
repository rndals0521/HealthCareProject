<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-2_Routine.css" type="text/css" rel="stylesheet">

<meta charset="UTF-8">
<title>MyRoutine</title>
<script type="text/javascript">
	function update_rt(f) {
		f.action="routine_detail.do";
		f.submit();
	}
	
	function delete_rt(f){
		f.action="myroutine.do";
		f.submit();
	}
</script>
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
		
		<!--  -->
		<div class="r-container">
			<div class="r-day">
				<div class="r-day-title">하루 루틴</div>
				<div class="r-day-rt">
					<div class="r-day-rtitem">
						<a href="routine_detail.do">[ 가슴운동루틴 ]</a>
						<form method="post">
							<input type="button" class="r-d-btn" value="수정" onclick="update_rt(this.form)"/>
							<input type="button" class="r-d-btn" value="삭제" onclick="delete_rt(this.form)"/>
						</form>
					</div>
					<div class="r-day-rtitem">
						<a>[ 가슴운동루틴 ]</a>
						<input type="button" class="r-d-btn" value="수정">
						<input type="button" class="r-d-btn" value="삭제">
					</div>
					<div class="r-day-rtitem">
						<a>[ 팔운동루틴 ]</a>
						<input type="button" class="r-d-btn" value="수정">
						<input type="button" class="r-d-btn" value="삭제">
					</div>
					<div class="r-day-rtitem">
						<a>[ 등운동루틴 ]</a>
						<input type="button" class="r-d-btn" value="수정">
						<input type="button" class="r-d-btn" value="삭제">
					</div>
					<div class="r-day-rtitem">
						<a>[ 어깨운동루틴 ]</a>
						<input type="button" class="r-d-btn" value="수정">
						<input type="button" class="r-d-btn" value="삭제">
					</div>
				</div>
			</div>
			
			<div class="r-week">
				<div class="r-week-title">일주일 루틴</div>
				<div class="r-week-rt">
					<div class="r-week-rtitem">
						<a href="#">[ 운동루틴1 ]</a>
						<input type="button" class="r-w-btn" value="수정">
						<input type="button" class="r-w-btn" value="삭제">
						
					</div>
					<div class="r-week-rtitem">
						<a href="#">[ 운동루틴1 ]</a>
						<input type="button" class="r-w-btn" value="수정">
						<input type="button" class="r-w-btn" value="삭제">
					</div>
					<div class="r-week-rtitem">
						<a href="#">[ 운동루틴2 ]</a>
						<input type="button" class="r-w-btn" value="수정">
						<input type="button" class="r-w-btn" value="삭제">
					</div>
					<div class="r-week-rtitem">
						<a href="#">[ 운동루틴3 ]</a>
						<input type="button" class="r-w-btn" value="수정">
						<input type="button" class="r-w-btn" value="삭제">
					</div>
					<div class="r-week-rtitem">
						<a href="#">[ 운동루틴4 ]</a>
						<input type="button" class="r-w-btn" value="수정">
						<input type="button" class="r-w-btn" value="삭제">
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