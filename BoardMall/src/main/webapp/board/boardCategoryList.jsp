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
							<li><a href="#" class="list-group-item list-group-item-action">전체게시판</a></li><!-- ajax로 addClass  -->
							<li class="current"><a href="#" class="list-group-item list-group-item-action disabled bg-secondary text-white">자유게시판</a></li> <!-- category : free -->
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
				<!-- 검색 -->
				<div class="nav col-12 justify-content-end">
					<form>
						<div class="inner-form row" style="display:inline-flex;">
							<div class="input-field first-wrap col-3">
								<div class="input-select">
									<select data-trigger="" name="choices-single-defaul">
										<option placeholder="">제목</option>
										<option>내용</option>
										<option>제목+내용</option>
									</select>
								</div>
							</div>	
							<div class="input-field second-wrap col-6">
								<input id="search" type="text" placeholder="키워드를 입력하세요" />
							</div>
							<div class="input-field third-wrap col-3">
								<button class="btn-search" type="button">검색</button>
							</div>
						</div>
					</form>
				</div>
				<table class="table project-table table-centered table-nowrap my-5" style="border-top:2px solid gray;border-bottom:2px solid #dee2e6;">
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
				
				<nav aria-label="Page navigation">
					<ul class=" pagination justify-content-center">
				    	<li class="page-item">
				    		<a class="page-link" href="#" aria-label="Previous">
					        	<span aria-hidden="true">&laquo;</span>
				    		</a>
				   		</li>
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    <li class="page-item">
					     	<a class="page-link" href="#" aria-label="Next">
					       		<span aria-hidden="true">&raquo;</span>
					     	</a>
				   		</li>
				 	</ul>
				</nav>
				
			</div>
				
		</div>	
		
	</article>	










<%@ include file="../footer.jsp" %>