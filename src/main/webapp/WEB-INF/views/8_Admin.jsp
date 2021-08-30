<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/8_Admin.css" type="text/css" rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
﻿<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<jsp:include page="Top.jsp"></jsp:include>
	
	<div class="main_container">
		<div class="management">
			<div class="admin_management_header">
				<span>관리자 계정 관리</span>
				
			</div>
			<div class="admin_management">
					<form>
					<table id="admin_table">
						<tbody>
							<tr>
								<th>관리자번호</th>
								<th>관리자명</th>
								<th>비고</th>
								<th>수정</th>
								<th>삭제</th>
								
							</tr>
							
							<tr>
								<td>1</td>
								<td>admin1</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>2</td>
								<td>admin2</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>admin3</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>4</td>
								<td>admin4</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>5</td>
								<td>admin5</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
			
			<div class="user_management_header">
				<span>회원 계정 관리</span>	
			</div>
			<div class="user_management">
					<form>
					<table id="user_table">
						<tbody>
							<tr>
								<th>관리자번호</th>
								<th>관리자명</th>
								<th>비고</th>
								<th>수정</th>
								<th>삭제</th>
								
							</tr>
							
							<tr>
								<td>1</td>
								<td>admin1</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>2</td>
								<td>admin2</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>3</td>
								<td>admin3</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>4</td>
								<td>admin4</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
							<tr>
								<td>5</td>
								<td>admin5</td>
								<td>김계정</td>
								<td><input type="button" value="수정"></td>
								<td><input type="button" value="삭제"></td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
		</div>
		
		<div class="add_contents">
			<div class="add_header">
				컨텐츠 등록
			</div>
			<form method="post" enctype="multipart/form-data">
				<table>
					<tbody>
						<tr>
							<th class="bg">대분류</th>
								<td>
									<input type="radio" name="category" value="health">헬스
									<input type="radio" name="category" value="yoga">요가
									<input type="radio" name="category" value="filates">필라테스
								</td>
						</tr>
						<tr>
							<th class="bg">운동번호</th>
								<td> <input type="text" name="e_num" required> </td>
						</tr>
						<tr>
							<th class="bg">운동명</th>
								<td> <input type="text" name="e_name" required> </td>
						</tr>
						<tr>
							<th class="bg">운동설명</th>
								<td> <input type="text" name="e_explain" required> </td>
						</tr>
						<tr>
							<th class="bg">운동부위</th>
								<td> <input type="text" name="e_part" required> </td>
						</tr>
						<tr>
							<th class="bg">운동이미지</th>
								<td> <input type="file" name="e_image" required> </td>
						</tr>
						<tr>
							<th class="bg">운동방법</th>
								<td> <input type="text" name="e_content" required> </td>
						</tr>
						<tr>
							<th class="bg">운동비디오</th>
								<td> <input type="text" name="e_video" required> </td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"><input type="button" value="등록" onclick="exercise_add(this.form)"></td>
						</tr>
					</tfoot>
				</table>
			</form>
		</div>
	</div>
	
	
	
	
	
	
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>