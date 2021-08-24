<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/2-2_Join.css?ver=1" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Sign Up</title>

<script type="text/javascript">
	function join_ok(f) {
		// 유효성 검사 할부분
		
		
		f.action="join_ok.do";
		f.submit();
	}
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
		<div class="join-wrap">
		 <form method="post">
			<div class="join">
				<div><h1>Sign Up</h1></div>

				<div>
					
						<div class="join-email">
							<div class="join-email-desc">
								<label for="email">Email</label>
								<span>회원이신가요?
									<a href="login.do">login</a>
								</span>
							</div>
							<div class="join-email-input">
								<input class="join-email-inputType" type="text" name="email" placeholder id="modalusername" value required>
							</div>
						</div>
						
						<div class="join-id">
							<div class="join-id-desc">
								<label for="id">ID</label>
							</div>
							<div class="join-id-input">
								<input class="join-id-inputType" type="text" name="id" placeholder id="modalusername" value required>
							</div>
						</div>
						
						<div class="join-name">
							<div class="join-name-desc">
								<label for="name">Name</label>
							</div>
							<div class="join-name-input">
								<input class="join-name-inputType" type="text" name="name" placeholder id="modalusername" value required>
							</div>
						</div>
						
						
						<div class="join-pwd">
							<div class="join-pwd-desc">
								<label for="current-password">Password</label>
								<span class="join-pwd-desc-show">
									<i class="fas fa-eye"></i> Show
								</span>
							</div>
							<div class="join-pwd-input">
								<input class="join-pwd-inputType" type="password" name="pw" placeholder id="current-password" value>
							</div>
						</div>
					
				</div>
				<div class="join-option">
					<li class="join-option-text"> 대/소문자 하나이상</li>
					<li class="join-option-text"> 특수문자 하나이상</li>
					<li class="join-option-text"> 숫자 하나이상</li>
				</div>
				
				<div class="join-btn">
					<div>
						<!-- <button class="join-btn-item"><span>Sign Up</span></button> -->
						<input type="button" value="Sing UP" class="join-btn-item" onclick="join_ok(this.form)"/>
					</div>
					
					<div class="forgot-pwd">
						<a href="#">Privacy Policy</a>
					</div>
				</div>
					
			</div>
			</form>
		</div>
		
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>