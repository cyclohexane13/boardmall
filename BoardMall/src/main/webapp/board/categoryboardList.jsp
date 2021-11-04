<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> 
	
	<article>
		<div class="container">
		
			<!-- 공통부분 -->
			<c:choose>
				<c:when test="${free eq 'free'}">
				<div id="top_menu">
				<div id="top_title">Community</div>
				<div id="top_content">
				
					<div id="top_box" class="box_selected" onclick="free()">
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
				</c:when>
				
				<c:when test="${review eq 'review'}">
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
					
					<div id="top_box2" class="box_selected" onclick="review()">
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
				</c:when>
				
				<c:when test="${qna eq 'qna'}">
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
					
					<div id="top_box3" class="box_selected" onclick="qna()">
						<div>
							<img src="resources/images/question_icon.png" width="60" height="60">
						</div>
						<div>질문게시판</div>
						<div>게임에 대한 질문을 해보세요.</div>
					</div>
				</div>
			</div>
				</c:when>
				
				<c:otherwise>
				<div id="top_menu">
				<div id="top_title">Community</div>
				<div id="top_content">
				
					<div id="top_box" class="box" onclick="free()">
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
				</c:otherwise>
			</c:choose>

			
			<!-- 글목록 -->
			<div id="boardList" >
				<!-- 검색 -->
				<form action="searchBoard.do" type="post">
					<div class="col-md-12 p-3 mt-3">
				     	<div  style="float: right;">
				     		<select class="mr-3" name="searchCondition" style="width : 140px; height : 35px;">
								<c:forEach items="${conditionMap}" var="option">
									<option value="${option.key}">${option.value}</option>
								</c:forEach>
							</select>
							<input class="formText" name="searchKeyword" type="text" id="" style="height : 35px;">
							<input type="submit" class="btn btn-primary" style="height : 35px;" value="검색">
				     	</div>
				     </div>  
			     </form>
				<table id="boardTable" class="table project-table table-centered table-nowrap my-5">
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
					
					<c:forEach items="${QnaboardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
					<c:forEach items="${ReviewboardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
					<c:forEach items="${AllBoardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
					<c:forEach items="${SearchBoardList}" var="boardVO">
					<tr>
						<td>${boardVO.seq}</td>
						<td><a href="boardDetail.do?seq=${boardVO.seq}">${boardVO.title}</a></td>
						<td>${boardVO.writer}</td>
						<td>${boardVO.regdate}</td>
						<td>${boardVO.viewcnt}</td>
					</tr>
					</c:forEach>
					
					
				</table>
				
				<div>
					<a class="w-100 btn btn-lg btn-light" href="boardWrite.do">글 작성하기</a>
				</div>
				
				<div id="paginate" class="mb-5 nav justify-content-center">
					${pageBar}
				</div>
				
				
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
</script>






<%@ include file="../footer.jsp" %>