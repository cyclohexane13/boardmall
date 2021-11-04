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
			
			<!-- 글 상세 -->
			<div id="boardDetatil" class="border-top border-2 border-dark my-3">
				<!-- 글 상세 영역 -->
				<div id="innerBoardDetail" class="border w-100 my-5 px-5">
					<!-- 제목영역 -->
					<div id="boardDetailTitle" class="border-bottom py-4">
						<div class="pt-4 fs-5">${board.title}</div>
						<div id="boardDetailNickname">${board.writer}</div>
						<div id="boardDetailDate">${board.regdate }</div>
					</div>
					<!-- 게임정보 : 리뷰게시판, 질문게시판에서 게임 선택했을 때 보임-->
					<c:if test="${game.seq != null}">
						<div id="boardDetailGame" class="border-bottom p-4">
							<table class="w-75">
								<tr>
									<td><img src="resources/${game.image}" width="70" height="70"></td>
									<td> <div id="gamename">${game.name}</div></td>
								</tr>
							</table>	
						</div>
					</c:if>
					<!-- 내용 -->
					<div id="boardDetailContent"><p>${board.content}</p></div>
					<!-- 버튼 - 목록 // 수정, 삭제 -->
					<div id="boardDtailBtn" class="border-top p-4">
						<a class="btn btn-dark" onclick="history.back()">목록으로</a>
						<div>
							<a class="btn btn-dark" href="boardUpdateForm.do?seq=${board.seq}">수정</a>
							<a class="btn btn-dark" href="deleteBoard.do?seq=${board.seq}">삭제</a>
						</div>	
					</div>
				</div>
				
				<!-- 댓글영역 -->
				<div id="boardCmt" class="border w-100 my-5 px-5 pb-3">
					<div id="boardCmtList">
						<ul>
							<li class="border-bottom py-4">
								<strong>닉네임</strong>
								<div id="cmtContent">댓글내용 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하 가나다라마바사아자차카타파하</div>
								<div id="cmtDate">2021-10-15</div>
							</li>
						</ul>
					</div>
					<form>
						<div class="w-100">
							<textarea class="w-100 p-4" placeholder="댓글을 작성해주세요."></textarea>
							<input type="submit"></input>
						</div>
					</form>
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