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
					<div id="top_box">
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
				<div class="row justify-content-between mt-5">
					<div class="col-4 fw-bold">자유게시판</div>
					<div class="col-4 text-secondary text-end">자유게시판 전체보기 + </div>
				</div>
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
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
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
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
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
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