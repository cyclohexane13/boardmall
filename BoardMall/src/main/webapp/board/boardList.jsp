<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> <!-- css : .clear{clear:both;} -->
	
	<article>
		<div class="container">
		
			<!-- 공통부분 -->
			<div id="list-group">
				<dl>
					<dd>
						<ul class="nav col-12 col-md-8 mt-5 mb-md-0">
							<li class="current"><a href="#" class="list-group-item list-group-item-action disabled bg-secondary text-white">전체게시판</a></li><!-- ajax로 addClass  -->
							<li><a href="#" class="list-group-item list-group-item-action">자유게시판</a></li> <!-- category : free -->
							<li><a href="#" class="list-group-item list-group-item-action">리뷰게시판</a></li> <!-- category : review -->
							<li><a href="#" class="list-group-item list-group-item-action">질문게시판</a></li> <!-- category : ask -->
						</ul>	
					</dd>
				</dl>
			</div>
			
			<div id="community" class="border col-md-12 p-5 mb-5">
				<h2 class="p-4 text-info">Community</h2>
				<p class="px-4 pb-4">다른 회원들과 자유롭게 소통하세요.</p>
			</div>
			
			<!-- 글목록 -->
			<div id="boardList" >
				<div class="row justify-content-between">
					<div class="col-4 fw-bold">자유게시판</div>
					<div class="col-4 text-secondary text-end">자유게시판 전체보기 + </div>
				</div>
				<table class="table project-table table-centered table-nowrap mt-4" style="border-top:2px solid gray;border-bottom:2px solid #dee2e6;">
					<tr>
						<td style="width: 12%">글번호(내림차순)</td>
						<td style="width: 68%">제목</td>
						<td style="width: 13%">작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
				</table>
				
				<hr class="my-5">
				
				<div class="row justify-content-between">
					<div class="col-4 fw-bold">리뷰게시판</div>
					<div class="col-4 text-secondary text-end">리뷰게시판 전체보기 + </div>
				</div>
				<table class="table project-table table-centered table-nowrap mt-4" style="border-top:2px solid gray;border-bottom:2px solid #dee2e6;">
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
				</table>
				
				<hr class="my-5">
				
				<div class="row justify-content-between">
					<div class="col-4 fw-bold">질문게시판</div>
					<div class="col-4 text-secondary text-end">질문게시판 전체보기 + </div>
				</div>
				<table class="table project-table table-centered table-nowrap mt-4" style="border-top:2px solid gray;border-bottom:2px solid #dee2e6;">
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<tr>
						<td>글번호(내림차순)</td>
						<td>제목</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
				</table>
				
				<hr class="my-5">
				
			</div>
				
		</div>	
		
	</article>	










<%@ include file="../footer.jsp" %>