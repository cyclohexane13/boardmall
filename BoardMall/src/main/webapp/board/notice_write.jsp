<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<!-- 공지사항 화면 구성 -->
<main>

<section style="height:150px">
</section>

 <div class="container">
 
 
 <form class="border p-5 my-5 w-75" method="post" style="margin: 0 auto;">
	<h4>공지사항 글쓰기</h4>
	<table class="table project-table table-centered table-nowrap mt-4 w-auto">
		<tr>
		<th class="table-secondary col-2">제목</th>
			<td class="input-select col-9">
				<input type="text" name="title">
			</td>
		</tr>
		<tr>
		<th class="table-secondary align-middle">내용</th>
		<td class="input-select col-9"><textarea name="content" cols="100" rows="20"></textarea></td>
		</tr>
		<tr>
		<th class="table-secondary">첨부파일</th>
		<td class="input-select col-9"><input type="file" name="image"></td>
		</tr>
	</table>
	<div class="text-center mt-5">
		<input class="w-auto btn btn-md btn-primary border me-2" type="submit" value="작성완료">
		<input class="w-auto btn btn-md btn-light border" type="reset" value="취소">
	</div>
 </form>
 
 
</div>

<section style="height:250px">
</section>

</main>

<%@ include file="../footer.jsp" %>