<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{text-decoration: none;}
	.board-notice.type_required, .board-notice.type_main{
		background: #f9f9f8;
	}
	.td_article{
		padding-left:12px;
		padding-right:18px;
		
	}
	.article-board tbody td{
		border-bottom-color: #f2f2f2;
		height: 28px;
		padding:4px 5px;
		border-bottom:1px solid #f2f2f2;
	}
	.board-tag{
		display:table-cell;
		width:56px;
		padding-right: 20px;
		text-align: center;
		vertical-align: middle;
	}
	
	.board-tag-txt{
		border:1px solid #00FFFF;
		background-color: #99FFFF;
		color:#0066FF;
		display:block;
		width:56px;
		height:10px;
		box-sizing:border-box;
		border-radius:3px;
		font-size:11px;
		font-weight:800;
		line-height:9px;
	}
	.board-list{
		display:table-cell;
		padding-top:1px;
	}
	.inner_list{
		display:table;
		width:100%;
		table-layout:fixed;
		word-wrap:break-word;
		word-break: break-word;
	}
	
	
	.head{
		color: #959595;
		font-weight:bold;
	}
	.article-board tbody td{
		border-bottom-color:#f2f2f2;
		padding: 4px 7px;
		border-bottom:1px solid #f2f2f2;
	}
	
	.td_name,.td_date,.td_view{
		text-align:center;
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
		<tr class="noticeArticle board-notice type_required">
		
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[진행중]
							</span>
							6월 30일(수) 업데이트 상세 공지[6/30 15:59]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.01
			</td>
			<td class="td_view">
				154
			</td>
		</tr>
		<tr class="noticeArticle board-notice type_required">
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[공지사항]
							</span>
							6월 30일 업데이트 이후 확인된 불편사항 안내 [7/1]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.02
			</td>
			<td class="td_view">
				100
			</td>
		</tr>
		<tr class="noticeArticle board-notice type_required">
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[공지사항]
							</span>
							6월 30일 업데이트 이후 확인된 불편사항 안내 [7/1]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.02
			</td>
			<td class="td_view">
				100
			</td>
		</tr>
		<tr class="noticeArticle board-notice type_required">
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[공지사항]
							</span>
							6월 30일 업데이트 이후 확인된 불편사항 안내 [7/1]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.02
			</td>
			<td class="td_view">
				100
			</td>
		</tr>
		<tr class="noticeArticle board-notice type_required">
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[공지사항]
							</span>
							6월 30일 업데이트 이후 확인된 불편사항 안내 [7/1]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.02
			</td>
			<td class="td_view">
				100
			</td>
		</tr>
		<tr class="noticeArticle board-notice type_required">
			<td colspan="2" class="td_article">
				<div class="board-tag">
					<strong class="board-tag-txt">
						<span class="inner">공지</span>
					</strong>
				</div>
				<div class="board-list">
					<div class="inner_list">
						<a href="#" onclick="" class="article">
							<span class="head">
								[진행중]
							</span>
							7월 5일 ~ 10일 헬스 캠프 진행 및 참여 안내 [7/1]
						</a>
					</div>
				</div>
			</td>
						
			<td class="td_name">
				관리자
			</td>
			<td class="td_date">
				21.07.02
			</td>
			<td class="td_view">
				2,100
			</td>
		</tr>
		</tbody>
	</table>
<script>
</script>
</body>
</html>