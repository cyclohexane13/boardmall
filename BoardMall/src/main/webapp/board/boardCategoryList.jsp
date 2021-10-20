<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> 
	
	<article>
		<div class="container">
		
			<!-- 공통부분 -->
			<div id="top_menu">
				<div id="top_title">Community</div>
				<div id="top_content">
					<div id="top_box" class="box_selected"> <!-- 게시판 선택되면 class 추가되도록.. -->
						<div>
							<img src="resources/images/community_icon.png" width="60" height="60">
						</div>
						<div>자유게시판</div>  
						<div>자유롭게 소통해보세요.</div>
					</div>
					<div id="top_box2">
						<div>
							<img src="resources/images/review_icon.png" width="60" height="60">
						</div>
						<div>리뷰게시판</div>
						<div>게임 리뷰를 확인해보세요.</div>
					</div>
					<div id="top_box3">
						<div>
							<img src="resources/images/question_icon.png" width="60" height="60">
						</div>
						<div>질문게시판</div>
						<div>게임에 대한 질문을 해보세요.</div>
					</div>
				</div>
			</div>
			
			<!-- 글목록 -->
			<div id="boardList" >
				<!-- 검색 -->
				<div id="boardListSearch" class="nav col-12 justify-content-end">
					<form>
						<div id="innerSearch" class="inner-form row">
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
				<table id="boardTable" class="table project-table table-centered table-nowrap my-5">
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
				
				<div>
					<a class="w-100 btn btn-lg btn-light" href="boardWrite.do">글 작성하기</a>
				</div>
				
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