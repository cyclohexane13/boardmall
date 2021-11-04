<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> <!-- css : .clear{clear:both;} -->
	
	<article>
		<div class="container">

			<!-- 글작성 -->

			<div id="boardWrite" class="nav justify-content-center mt-5 w-100" style="display:block;">
				<h3>게시글 작성</h3>
				<form class="border p-5 my-5 w-75" action="updateBoard.do?seq=${board.seq}" method="post">
					<table class="table project-table table-centered table-nowrap mt-4 w-100" >
						<tr>
							<th class="table-secondary">카테고리</th>
							<td class="input-select">
								<select id="catrgory" name="category">
									<option value="리뷰게시판">리뷰게시판</option>
									<option value="질문게시판">질문게시판</option>
									<option value="자유게시판">자유게시판</option>
								</select>
							</td>
						</tr>	
						<!-- 리뷰/질문게시판 선택시에만 나타나도록. 팝업창 띄우기: searchGame.jsp -->
						<tr>
							<th class="table-secondary col-2">게임</th>
							<td class="input-select col-9">
								<div id="selectGame">
									<a class="w-auto btn btn-sm btn-light border" onclick="popup()">게임 선택하기</a>
									<input id="gamename" type="text" readonly placeholder="게임을 선택하세요.">
									<img id="gameImg" style="width:100px; height: 100px;">
									<input id="gameseq" type="hidden" name="gameseq">
								</div>
							</td>
						</tr>
						<!--  -->
						<tr>
							<th class="table-secondary col-2">제목</th>
							<td class="input-select col-9">
								<input type="text" name="title" class="w-100" placeholder="${board.title}">
							</td>
						</tr>	
						<tr>
							<th class="table-secondary col-2">내용</th>
							<td class="input-select col-9">
								<textarea class="w-100" rows="20" name="content">${board.content}</textarea>
							</td>
						</tr>	
					</table>	
					<div id="buttons" class="w-100 nav justify-content-center">
						<button class="w-auto btn btn-md btn-primary border me-2" type="submit">작성확인</button>
   						<button class="w-auto btn btn-md btn-light border" onclick="reset()">취소</button>
					</div>
				</form>
			</div>
				
		</div>	
		
	</article>	


<!-- 간단한 게임 검색 화면 띄우기 -->
<script>
	function popup(){
		var url = "searchGame.do";
		var name = "test";
		var option = "width = 570 , height = 670, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	
	$(document).ready(function(){
		$('#catrgory').change(function(){
			var result = $('#catrgory option:selected').val();
			if(result == '자유게시판'){
				$('#selectGame').hide();
				$('#gameseq').val(0)
			}else{
				$('#selectGame').show();
			}
		});
	});
	
</script>







<%@ include file="../footer.jsp" %>