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
						<div >자유게시판</div>
						<div>자유롭게 소통해보세요.</div>
					</div>
					<div id="top_box2"  class="box_selected"> <!-- 게시판 선택되면 class 추가되도록.. -->
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
			
			<!-- 글 상세 -->
			<div id="boardDetatil" class="border-top border-2 border-dark my-3">
				<!-- 글 상세 영역 -->
				<div id="innerBoardDetail" class="border w-100 my-5 px-5">
					<!-- 제목영역 -->
					<div id="boardDetailTitle" class="border-bottom py-4">
						<div class="pt-4 fs-5">이거 제목인데요</div>
						<div id="boardDetailNickname">닉네임</div>
						<div id="boardDetailDate">2021-10-14</div>
					</div>
					<!-- 게임정보 : 리뷰게시판, 질문게시판에서 게임 선택했을 때 보임-->
					<div id="boardDetailGame" class="border-bottom p-4">
						<table class="w-75">
							<tr>
								<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
								<td> <div id="gameTitle">세상에서 제일 재미있는 게임 게임이다게임이야 가나다라마바사아자착카타파하 재밌다고 사라고사사사사사아아아사ㅏ아상</div></td>
							</tr>
						</table>	
					</div>
					<!-- 내용 -->
					<div id="boardDetailContent"><p>이거 내용인데요, 내가 어제 있잖아요..</p></div>
					<!-- 버튼 - 목록 // 수정, 삭제 -->
					<div id="boardDtailBtn" class="border-top p-4">
						<button type="button" class="btn btn-dark">목록으로</button>
						<div>
							<button type="button" class="btn btn-dark">수정</button>
							<button type="button" class="btn btn-dark">삭제</button>
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
							<li class="border-bottom py-4">
								<strong>닉네임</strong>
								<div id="cmtContent">내용</div>
								<div id="cmtDate">날짜</div>
							</li>
							<li class="border-bottom py-4">
								<strong>닉네임</strong>
								<div id="cmtContent">내용</div>
								<div id="cmtDate">날짜</div>
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



<%@ include file="../footer.jsp" %>