<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/5-4_Food_Cal.css?ver=1" type="text/css" rel="stylesheet">

<meta charset="UTF-8">
<title>MY 식단</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
function fn_calBMI(height, weight){
	var BMIresult = $('#searchWeight').val() / (($('#searchHeight').val() / 100) * ($('#searchHeight').val() / 100));
	var BMItext = "";
	if(BMIresult < 18.5) BMItext = '저체중';
	if(BMIresult >= 18.5 && BMIresult < 23) BMItext = '정상체중';
	if(BMIresult >= 23 && BMIresult < 25) BMItext = '위험체중';
	if(BMIresult >= 25 && BMIresult < 30) BMItext = '비만 1단계';
	if(BMIresult >= 30 && BMIresult < 40) BMItext = '비만 2단계';
	if(BMIresult >= 40) BMItext = '비만 3단계';
	$('#bmi').val(BMIresult.toFixed(2));
	$('#bmiTxt').val(BMItext) ;
}

function fn_reset(){
	$('#searchHeight').val('');
	$('#searchWeight').val('');
	$('#searchAge').val('');
	$('#bmi').val('');
	$('#bmiTxt').val('') ;
}
</script>

</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="container">
		<div class="menu">
			<div class="menu-my">
				<a href="food_my.do"> My 식단 </a>
			</div>
			<div class="menu-myR">
				<a href="food_share.do"> 식단공유 </a>
			</div>
			<div class="menu-share">
				<a href="food_cal.do"> 계산기 </a>
			</div>
			<div class="menu-help">
				<a> HELP </a>
			</div>
			<div class="make-btn">
				<a> 제작 </a>
			</div>
		</div>
		
		<!--  -->
		<div class="main">
		<div id="sub-header">
			<h1 class="h1">BMI 계산기</h1>
		</div>
		<div class="cal-container">
			<div class="cal-main">
				<h3 class="cal-title">나의 체중, 제대로 알자</h3>
				<fieldset>
					<legend>BMI 검색</legend>
					<div class="bmi-search">
						<div class="col-3">
							<p class="col-3-title">성별정보</p>
								<dl>
									<dt>
										<label for="searchSexFlagM">성별</label>
									</dt>
									<dd>
										<div class="btn-group">
											<label for="searchSexFlagM" class="btn btn-default active" style="padding-bottom:35px;">
												<input type="radio" title="성별" name="searchSexFlag" id="searchSexFlagM" style="margin-top:15px; width:25px; opacity:1; z-index:1;" checked>
												남자
											</label>
											<label for="searchSexFlagF" class="btn btn-default" style="padding-bottom:35px;">
												<input type="radio" title="성별" name="searchSexFlag" id="searchSexFlagF" style="margin-top:15px; width:25px; opacity:1; z-index:1;" checked>
												여자
											</label>
										</div>
									</dd>
								</dl>
						</div>
						<div class="col-3">
							<p class="col-3-title">신체정보</p>
							<dl>
								<dt><label for="searchHeight">키(cm)</label></dt>
								<dd>
									<input type="text" name="searchHeight" size="10" maxlength="5" value id="searchHeight" title="키를입력해주세요" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
								</dd>
								<dt><label for="searchWeight">몸무게(kg)</label></dt>
								<dd>
									<input type="text" name="searchWeight" size="10" maxlength="5" value id="searchWeight" title="몸무게를입력해주세요" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
								</dd>
								<dt><label for="searchAge">나이(세)</label></dt>
								<dd>
									<input type="text" name="searchAge" size="7" maxlength="5" value id="searchAge" title="나이를입력해주세요" style="ime-mode:disabled;" onkeypress="return fn_onlyNumber();">
								</dd>
								
							</dl>
						</div>
						<div class="col-3">
							<p class="col-3-title">비만도결과</p>
							<dl>
								<dt><label for="bmi">체질량지수</label></dt>
								<dd>
									<input type="text" name="bmi" size="25" maxlength="100" id="bmi" title="체질량지수를 입력해주세요" readonly>
								</dd>
								<dd class="ddfull">
									<input type="text" name="bmiTxt" size="25" maxlength="100" id="bmiTxt" title="검색 결과를 입력해주세요" readonly>
								</dd>
								<dd class="ddfull">
									<a href="javasript:;" class="btn btn-default btn-block" onclick="javascript:fn_reset();">초기화</a>
								</dd>
							</dl>
						</div>
					</div>
					<a href="javascript:fn_calBMI();" class="btn btn-default btn-block" role="button">계산하기</a>
				</fieldset>
			</div>
		</div>
		
	</div>
	</div>
	<jsp:include page="Footer.jsp"></jsp:include>
<script>
</script>
</body>
</html>