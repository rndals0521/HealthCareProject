<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{text-decoration: none;}
	
	.article-board .td_article{
		padding-left: 12px;
		padding-right: 18px;
	}	
	
	.td_name,.td_date,.td_view{
		text-align:center;
	}
	.article-board tobody td{
		border-bottom-color:#f2f2f2;
	}
	
	.article-board tbody td{
		border-bottom-color:#f2f2f2;
		padding: 4px 7px;
		border-bottom:1px solid #f2f2f2;
	}
	.article-board .board-number{
		display:table-cell;
		width:75.99px;
		padding-right: 7px;
		vertical-align: middle;
	}
	.article-board .inner_number{
		display:inline-block;
		width:150px;
		margin:-2px 6px 0 -6px;
		font-size:11px;
		line-height:13px;
		text-align:center;
		word-wrap:break-word;
		word-break:break-word;
	}
	
	.board-list{
		display:table-cell;
		padding-top:1px;
	}
	.inner-list{
		display:table;
		width:100%;
		table-layout:fixed;
		word-wrap: break-word;
		word-break: break-word;
	}
</style>
</head>
<body>
	
	<table>
		<colgroup>
			<col>
			<col style="width: 50%;">
			<col style="width: 15%;">
			<col style="width: 20%;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr id="normalTableTitle">
				<th> </th>
			    <th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
				<th scope="col">조회</th>
			</tr>
		</thead>
		<tbody>
			<tr >
				<td colspan="2" class="td_article">
					<div class="board-number">
						<div class="board-number">13</div>
					</div>
					<div class="board-list">
						<div class="inner_list">
							<a>계정관리 질문.</a>
						</div>
					</div>
				</td>
				<td class="td_name">
					김갑수
				</td>
				<td class="td_date">
					21.07.01
				</td>
				<td class="td_view">
					1,540
				</td>
			</tr>
			<tr>
				<td colspan="2" class="td_article">
					<div class="board-number">
						<div class="board-number">12</div>
					</div>
					<div class="board-list">
						<div class="inner_list">
							<a>비만도 계산기 사용법에대해서.</a>
						</div>
					</div>
				</td>
				<td class="td_name">
					홍길동
				</td>
				<td class="td_date">
					21.07.01
				</td>
				<td class="td_view">
					1,540
				</td>
			</tr>
			<tr>
				<td colspan="2" class="td_article">
					<div class="board-number">
						<div class="board-number">11</div>
					</div>
					<div class="board-list">
						<div class="inner_list">
							<a>루틴은 어떻게 짜나요?.</a>
						</div>
					</div>
				</td>
				<td class="td_name">
					홍길동
				</td>
				<td class="td_date">
					21.07.01
				</td>
				<td class="td_view">
					1,540
				</td>
			</tr>
		</tbody>
	</table>
<script>
</script>
</body>
</html>