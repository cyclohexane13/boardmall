<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> <!-- css : .clear{clear:both;} -->
	
	<article>
		<div class="container">

			<!-- 글작성 -->

			<div id="boardWrite" class="nav justify-content-center mt-5 w-100" style="display:block;">
				<h3>게시글 작성</h3>
				<form class="border p-5 my-5 w-75">
					<table class="table project-table table-centered table-nowrap mt-4 w-100" >
						<tr>
							<th class="table-secondary">카테고리</th>
							<td class="input-select">
								<select data-trigger="" name="choices-single-defaul">
									<option>자유게시판</option>
									<option>리뷰게시판</option>
									<option>질문게시판</option>
								</select>
							</td>
						</tr>	
						<!-- 리뷰/질문게시판 선택시에만 나타나도록. 팝업창 띄우기: searchGame.jsp -->
						<tr>
							<th class="table-secondary col-2">게임</th>
							<td class="input-select col-9">
								<button class="w-auto btn btn-sm btn-light border" onclick="popup()">게임 선택하기</button>
							</td>
						</tr>
						<!--  -->
						<tr>
							<th class="table-secondary col-2">제목</th>
							<td class="input-select col-9">
								<input type="text" name="title" class="w-100">
							</td>
						</tr>	
						<tr>
							<th class="table-secondary col-2">내용</th>
							<td class="input-select col-9">
								<textarea class="w-100" rows="20" name="content"></textarea>
							</td>
						</tr>	
						<tr>
							<th class="table-secondary col-2">첨부파일</th>
							<td class="input-select col-9">
								<input type="file" name="image">
							</td>
						</tr>	
					</table>	
					<div id="buttons" class="w-100 nav justify-content-center">
						<button class="w-auto btn btn-md btn-primary border me-2" type="submit">작성확인</button>
   						<button class="w-auto btn btn-md btn-light border" type="">취소</button>
					</div>
				</form>
			</div>
				
		</div>	
		
	</article>	


<!-- 간단한 게임 검색 화면 띄우기 -->
<script>
	function popup(){
		var url = "board/searchGame.jsp";
		var name = "test";
		var option = "width = 500 , height = 600, top = 100, left = 200, location = no";
		window.open(url, name, option);
		
	}
</script>






<%@ include file="../footer.jsp" %>