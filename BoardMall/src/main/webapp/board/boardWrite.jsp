<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div> <!-- css : .clear{clear:both;} -->
	
	<article>
		<div class="container">

			<!-- 글작성 -->

			<div id="boardWrite" class="nav justify-content-center mt-5" style="display:block;">
				<h3>게시글 작성</h3>
				<form class="border p-5 my-5 w-75">
					<table class="table project-table table-centered table-nowrap mt-4 w-auto" >
						<tr>
							<th class="table-secondary col-2">카테고리</th>
							<td class="input-select col-9">
								<select data-trigger="" name="choices-single-defaul">
									<option>자유게시판</option>
									<option>리뷰게시판</option>
									<option>질문게시판</option>
								</select>
							</td>
						</tr>	
						<tr>
							<th class="table-secondary col-2">제목</th>
							<td class="input-select col-9">
								<input type="text" name="title" size="80">
							</td>
						</tr>	
						<tr>
							<th class="table-secondary col-2">내용</th>
							<td class="input-select col-9">
								<textarea cols="82" rows="20" name="content"></textarea>
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










<%@ include file="../footer.jsp" %>