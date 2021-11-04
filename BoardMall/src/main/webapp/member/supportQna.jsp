<%@page import="com.boardmall.pro.dto.QnaVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<style>
		#faqForm{
			display: inline;
		}
	</style>
	<script>
		$(function(){
			var yet = $(".yet").html("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-clock-history\" viewBox=\"0 0 16 16\"><path d=\"M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022l-.074.997zm2.004.45a7.003 7.003 0 0 0-.985-.299l.219-.976c.383.086.76.2 1.126.342l-.36.933zm1.37.71a7.01 7.01 0 0 0-.439-.27l.493-.87a8.025 8.025 0 0 1 .979.654l-.615.789a6.996 6.996 0 0 0-.418-.302zm1.834 1.79a6.99 6.99 0 0 0-.653-.796l.724-.69c.27.285.52.59.747.91l-.818.576zm.744 1.352a7.08 7.08 0 0 0-.214-.468l.893-.45a7.976 7.976 0 0 1 .45 1.088l-.95.313a7.023 7.023 0 0 0-.179-.483zm.53 2.507a6.991 6.991 0 0 0-.1-1.025l.985-.17c.067.386.106.778.116 1.17l-1 .025zm-.131 1.538c.033-.17.06-.339.081-.51l.993.123a7.957 7.957 0 0 1-.23 1.155l-.964-.267c.046-.165.086-.332.12-.501zm-.952 2.379c.184-.29.346-.594.486-.908l.914.405c-.16.36-.345.706-.555 1.038l-.845-.535zm-.964 1.205c.122-.122.239-.248.35-.378l.758.653a8.073 8.073 0 0 1-.401.432l-.707-.707z\"/><path d=\"M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0v1z\"/><path d=\"M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5z\"/></svg>");
			var pause = $(".pause").html("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-dash-circle-dotted\" viewBox=\"0 0 16 16\"><path d=\"M8 0c-.176 0-.35.006-.523.017l.064.998a7.117 7.117 0 0 1 .918 0l.064-.998A8.113 8.113 0 0 0 8 0zM6.44.152c-.346.069-.684.16-1.012.27l.321.948c.287-.098.582-.177.884-.237L6.44.153zm4.132.271a7.946 7.946 0 0 0-1.011-.27l-.194.98c.302.06.597.14.884.237l.321-.947zm1.873.925a8 8 0 0 0-.906-.524l-.443.896c.275.136.54.29.793.459l.556-.831zM4.46.824c-.314.155-.616.33-.905.524l.556.83a7.07 7.07 0 0 1 .793-.458L4.46.824zM2.725 1.985c-.262.23-.51.478-.74.74l.752.66c.202-.23.418-.446.648-.648l-.66-.752zm11.29.74a8.058 8.058 0 0 0-.74-.74l-.66.752c.23.202.447.418.648.648l.752-.66zm1.161 1.735a7.98 7.98 0 0 0-.524-.905l-.83.556c.169.253.322.518.458.793l.896-.443zM1.348 3.555c-.194.289-.37.591-.524.906l.896.443c.136-.275.29-.54.459-.793l-.831-.556zM.423 5.428a7.945 7.945 0 0 0-.27 1.011l.98.194c.06-.302.14-.597.237-.884l-.947-.321zM15.848 6.44a7.943 7.943 0 0 0-.27-1.012l-.948.321c.098.287.177.582.237.884l.98-.194zM.017 7.477a8.113 8.113 0 0 0 0 1.046l.998-.064a7.117 7.117 0 0 1 0-.918l-.998-.064zM16 8a8.1 8.1 0 0 0-.017-.523l-.998.064a7.11 7.11 0 0 1 0 .918l.998.064A8.1 8.1 0 0 0 16 8zM.152 9.56c.069.346.16.684.27 1.012l.948-.321a6.944 6.944 0 0 1-.237-.884l-.98.194zm15.425 1.012c.112-.328.202-.666.27-1.011l-.98-.194c-.06.302-.14.597-.237.884l.947.321zM.824 11.54a8 8 0 0 0 .524.905l.83-.556a6.999 6.999 0 0 1-.458-.793l-.896.443zm13.828.905c.194-.289.37-.591.524-.906l-.896-.443c-.136.275-.29.54-.459.793l.831.556zm-12.667.83c.23.262.478.51.74.74l.66-.752a7.047 7.047 0 0 1-.648-.648l-.752.66zm11.29.74c.262-.23.51-.478.74-.74l-.752-.66c-.201.23-.418.447-.648.648l.66.752zm-1.735 1.161c.314-.155.616-.33.905-.524l-.556-.83a7.07 7.07 0 0 1-.793.458l.443.896zm-7.985-.524c.289.194.591.37.906.524l.443-.896a6.998 6.998 0 0 1-.793-.459l-.556.831zm1.873.925c.328.112.666.202 1.011.27l.194-.98a6.953 6.953 0 0 1-.884-.237l-.321.947zm4.132.271a7.944 7.944 0 0 0 1.012-.27l-.321-.948a6.954 6.954 0 0 1-.884.237l.194.98zm-2.083.135a8.1 8.1 0 0 0 1.046 0l-.064-.998a7.11 7.11 0 0 1-.918 0l-.064.998zM4.5 7.5a.5.5 0 0 0 0 1h7a.5.5 0 0 0 0-1h-7z\"/></svg>");
			var ok = $(".ok").html("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" class=\"bi bi-check2\" viewBox=\"0 0 16 16\"><path d=\"M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z\"/></svg>");
		});
		
		function submit() {
			document.getElementById("frm").submit();
		}
	</script>

	<main class="container">
		<!-- <div id="topmenu">
			<ul class="nav col-12 col-xxl-8 mb-3 mt-5 mb-md-0">
				<li class="list-group-item list-group-item-action list-group-item-light" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">FAQ</p>
				</li>
				<li class="list-group-item list-group-item-action list-group-item-dark" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">1:1 문의</p>
				</li>
				
			</ul>
		</div>
		<div id="notice_head" class="border col-md-12 p-2 mb-3">
			<h2 class="p-4 text-info">1:1 문의</h2>
			<p class="px-4 pb-4">문의사항이 있으신가요?</p>
		</div> -->
		
		<div id="top_menu">
            <div id="top_title">Service</div>
            <div id="top_content">
            	<div id="top_box"  class="box_selected" onclick="location.href='/pro/support.do?paging=0'">
                    <div>
                        <img src="resources/images/qna_icon.png" width="60" height="60">
                    </div>
                    <div>1:1 문의</div>
                    <div>문의사항은 이곳에 입력해주세요.</div>
                </div>
                <div id="top_box2" onclick="location.href='/pro/faq.do'">
                    <div>
                        <img src="resources/images/faq_icon.png" width="60" height="60">
                    </div>
                    <div>FAQ</div>
                    <div>자주 묻는 질문들을 확인해주세요.</div>
                </div>
            </div>
        </div>
		
	<div class="d-inline-block mt-2 mb-3">
		<button type="button" class="btn btn-lg btn-outline-primary" data-bs-toggle="modal" data-bs-target="#qna" style="width: 200px;">문의하기</button>
		
		<div class="modal fade" id="qna" data-bs-backdrop="static" aria-labelledby="qnaLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="qnaLabel">문의사항 작성</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <form action="submitQna.do" method="get" id="frm">
		          <div class="mb-3">
		            <label for="title" class="col-form-label">제목 : </label>
		            <input type="text" class="form-control" id="title" name="title">
		          </div>
		          <div class="mb-3">
		            <label for="content" class="col-form-label">내용 : </label>
		            <textarea class="form-control" id="content" name="content"></textarea>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" onclick="submit();">Send message</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
		
	<div class="d-inline-block my-2 border-top border-3 border-dark" style="height: 420px; width: 100%">
			
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></th>
			      <th scope="col">상태</th>
			      <th scope="col" colspan="3">제목</th>
			    </tr>
			  </thead>
		
			  <tbody>
			  	<!-- 반복문으로 modal생성/seq번호 id에 부여 -->
			  	<!-- 마찬가지로 반복문으로 table 작성 seq로 modal 연결-->
			  	<!-- if나 choose로 답변상태 받아서 제목굵기 yes=strong / no=일반 -->
			<c:forEach var="qna" items="${qnaList }" begin="${paging*9}" end="${(paging+1)*9-1}">	  	
			    <tr data-bs-toggle="modal" data-bs-target="#qna${qna.seq}">
			      <th scope="row">${qna.seq}</th>
			      <c:choose>
			      	<c:when test="${qna.state eq 'Y' or qna.state eq 'y'}">
			      		<td><span class="ok"></span>완료</td>
			      		<td colspan="3"><strong>${qna.title }</strong></td>
			      	</c:when>
			      	<c:otherwise>
			      		<td><span class="yet"></span>진행</td>
			      		<td colspan="3">${qna.title }</td>
			      	</c:otherwise>
			      </c:choose>
			    </tr>
			</c:forEach>
			  </tbody>	
			</table>
			
			<!-- Modal -->
		<c:forEach var="qna" items="${qnaList }">
			<div class="modal fade" id="qna${qna.seq }" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">${qna.title }</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <c:choose>
			      	<c:when test="${qna.state eq 'Y' or qna.state eq 'y' }">
			      		<div class="modal-body fw-bold">
				        <p class="text-secondary">답변</p>
				        <hr>
				        <div>${qna.reply }</div>
				        <br><br>
				        <p class="text-secondary">질문 상세</p>
				        <hr>
				        <div>${qna.content }</div>
				      </div>
			      	</c:when>
			      	<c:otherwise>
			      		<div class="modal-body fw-bold">
				        <p class="text-secondary">답변</p>
				        <hr>
				        <div><strong>답변 대기 중</strong></div>
				        <br><br>
				        <p class="text-secondary">질문 상세</p>
				        <hr>
				        <div>${qna.content }</div>
				      </div>
			      	</c:otherwise>
			      </c:choose>
			      <div class="modal-footer">
		        	<button type="button" class="btn btn-outline-dark" data-bs-target="#qna" data-bs-toggle="modal">추가 문의</button>
		        	<button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
		          </div>
			    </div>
			  </div>
			</div>
		</c:forEach>
	</div>
		
		<nav aria-label="Page navigation example"> 	
		  <ul class="pagination justify-content-center">
		    
		    <c:choose>
		    	<c:when test="${paging gt 0 }">
		    		<li class="page-item">
				      <a class="page-link" href="support.do?paging=${paging-1 }">Previous</a>
				    </li>
		    	</c:when>
		    	<c:otherwise>
		    		<li class="page-item disabled">
				      <a class="page-link" href="#">First Page</a>
				    </li>
		    	</c:otherwise>
		    </c:choose>
			<c:forEach var="page" begin="1" end="${maxPage }">
		    	<li class="page-item"><a class="page-link" href="support.do?paging=${page-1 }">${page }</a></li>
		    </c:forEach>
		    <c:choose>
		    	<c:when test="${paging+1 lt maxPage }">
		    		<li class="page-item">
				      <a class="page-link" href="support.do?paging=${paging+1 }">Next</a>
				    </li>
		    	</c:when>
		    	<c:otherwise>
		    		<li class="page-item disabled">
				      <a class="page-link" href="#">Last Page</a>
				    </li>
		    	</c:otherwise>
		    </c:choose>
		  </ul>
		</nav>
	</main>
	
<%@ include file="../footer.jsp" %>