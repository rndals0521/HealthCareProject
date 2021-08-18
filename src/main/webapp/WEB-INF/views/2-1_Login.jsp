<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/2-1_Login.css?ver=1" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Login</title>
<script type="text/javascript">
	function login_go(f) {
		if(f.email.value=="" || f.pw.value==""){
			alert("id 혹은 pw를 입력하세요");
			f.email.value="";
			f.pw.value="";
			f.email.focus();
			return;
		}
		f.action="login_ok.do";
		f.submit();
	}
	function join_go(f) {
		alert("회원가입하러 갑니다.");
		f.action="join_ok.do";
		f.submit();
	}
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	
		<div class="Login-wrap">
			<div class="login">
				<div><h1>Log in</h1></div>
				<form method="post">
					<div>
						
							<div class="login-email">
								
								<div class="login-email-desc">
									<label for="email">Email</label>
									<span>회원이 아니신가요?
										<a href="join.do">Sign up</a>
									</span>
								</div>
								
								<div class="login-email-input">
									<input class="login-email-inputType" type="text" name="email"    required>
								</div>
								
							</div>
							
							<div class="login-pwd">
								<div class="login-pwd-desc">
									<label for="current-password">Password</label>
									<span class="login-pwd-desc-show">
										<i class="fas fa-eye"></i> Show
									</span>
								</div>
								
								<div class="login-pwd-input">
									<input class="login-pwd-inputType" type="password" name="pw"   >
								</div>
								
							</div>
						
					</div>
					
					<div class="login-btn">
					
						<div>
							<button class="login-btn-item" onclick="login_go(this.form)"><span>Log in</span></button>
						</div>
						
						<div class="forgot-pwd">
							<a href="#">비밀번호를 잊으셨나요?</a>
						</div>
						
					</div>
					
				</form>
				
			</div>
		</div>
	
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>