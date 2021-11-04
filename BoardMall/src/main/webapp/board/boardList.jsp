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
				
					<div id="top_box" onclick="free()">
						<div>
							<img src="resources/images/community_icon.png" width="60" height="60">
						</div>
						<div>자유게시판</div>
						<div>자유롭게 소통해보세요.</div>
					</div>
					
					<div id="top_box2" onclick="review()">
						<div>
							<img src="resources/images/review_icon.png" width="60" height="60">
						</div>
						<div>리뷰게시판</div>
						<div>게임 리뷰를 확인해보세요.</div>
					</div>
					
					
					<div id="top_box3" onclick="qna()">
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
					<div class="col-4 fw-bold">전체게시판</div>
					<div class="col-4 text-secondary text-end" onclick="All()">게시판 전체보기 + </div>
				</div>
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
					<tr>
						<td style="width: 15%">글번호(내림차순)</td>
						<td style="width: 60%">제목</td>
						<td style="width: 10%">작성자</td>
						<td style="width: 10%">작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach items="${AllBoardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
				</table>
			
				<div class="row justify-content-between mt-5">
					<div class="col-4 fw-bold">자유게시판</div>
					<div class="col-4 text-secondary text-end" onclick="free()">자유게시판 전체보기 + </div>
				</div>
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
					<tr>
						<td style="width: 15%">글번호(내림차순)</td>
						<td style="width: 60%">제목</td>
						<td style="width: 10%">작성자</td>
						<td style="width: 10%">작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach items="${FreeboardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
				</table>
				
				<div class="my-5"></div>
				
				<div class="row justify-content-between">
					<div class="col-4 fw-bold">리뷰게시판</div>
					<div class="col-4 text-secondary text-end" onclick="review()">리뷰게시판 전체보기 + </div>
				</div>
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
					<tr>
						<td style="width: 15%">글번호(내림차순)</td>
						<td style="width: 60%">제목</td>
						<td style="width: 10%">작성자</td>
						<td style="width: 10%">작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach items="${ReviewboardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
				</table>
				
				<div class="my-5"></div>
		
				<div class="row justify-content-between">
					<div class="col-4 fw-bold">질문게시판</div>
					<div class="col-4 text-secondary text-end" onclick="qna()">질문게시판 전체보기 + </div>
				</div>
				<table id="boardTable" class="table project-table table-centered table-nowrap mt-4">
					<tr>
						<td style="width: 15%">글번호(내림차순)</td>
						<td style="width: 60%">제목</td>
						<td style="width: 10%">작성자</td>
						<td style="width: 10%">작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach items="${QnaboardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
				</table>
				
				<div class="my-5"></div>
			</div>
			
				
		</div>	
		
	</article>	



<script>
function free() {
	location.href="FreeBoardList.do";
}

function review() {
	location.href="ReviewBoardList.do";
}

function qna() {
	location.href="QnaBoardList.do";
}

function All() {
	location.href="AllBoardList.do";
}
</script>






<%@ include file="../footer.jsp" %>