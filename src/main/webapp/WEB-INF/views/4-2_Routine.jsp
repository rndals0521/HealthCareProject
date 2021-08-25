<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/4-2_Routine.css?ver=1" type="text/css" rel="stylesheet">

<meta charset="UTF-8">
<title>MyRoutine</title>
<script type="text/javascript">
	function update_rt(f) {
		f.action="routine_detail.do";
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
					
						<c:forEach var="k" items="${cList }">
							
							<c:choose>
								<c:when test="${k.r_kinds eq 'day' }">
									<div class="r-day-rtitem">
										<a href="routine_detail.do?r_id=${k.r_id }">[ ${k.r_name } ]</a>
										<form method="post">
											<input type="button" class="r-d-btn" value="수정" onclick="update_rt(this.form)"/>
											<input type="button" class="r-d-btn" value="삭제" onclick="location.href='deleteroutine_ok.do?r_id=${k.r_id}'"/>
										</form>
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
					
					
				</div>
			</div>
			
			<div class="r-week">
				<div class="r-week-title">일주일 루틴</div>
				<div class="r-week-rt">
					<c:forEach var="k" items="${cList }">
							
							<c:choose>
								<c:when test="${k.r_kinds eq 'week' }">
									<div class="r-week-rtitem">
										<a href="routine_detail.do">[ ${k.r_name } ]</a>
										<form method="post">
											<input type="button" class="r-d-btn" value="수정" onclick="update_rt(this.form)"/>
											<input type="button" class="r-d-btn" value="삭제" onclick="delete_rt(this.form)"/>
										</form>
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
					
				</div>
			
			</div>
		</div>
	</div>
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>