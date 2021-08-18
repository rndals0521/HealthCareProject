<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/2-2_Join.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
		<div class="join-wrap">
			<div class="join">
				<div><h1>Sign Up</h1></div>

				<div>
					<form>
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
						
						<div class="join-pwd">
							<div class="join-pwd-desc">
								<label for="current-password">Password</label>
								<span class="join-pwd-desc-show">
									<i class="fas fa-eye"></i> Show
								</span>
							</div>
							<div class="join-pwd-input">
								<input class="join-pwd-inputType" type="password" name="current-password" placeholder id="current-password" value>
							</div>
						</div>
					</form>
				</div>
				<div class="join-option">
					<li class="join-option-text"> 대/소문자 하나이상</li>
					<li class="join-option-text"> 특수문자 하나이상</li>
					<li class="join-option-text"> 숫자 하나이상</li>
				</div>
				
				<div class="join-btn">
					<div>
						<button class="join-btn-item"><span>Sign Up</span></button>
					</div>
					
					<div class="forgot-pwd">
						<a href="#">Privacy Policy</a>
					</div>
				</div>
			</div>
		</div>
		
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>