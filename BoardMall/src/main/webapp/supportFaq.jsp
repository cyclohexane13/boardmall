<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<style>
		#faqForm{
			display: inline;
		}
	</style>

	<main class="container">
		<div id="topmenu">
			<ul class="nav col-12 col-xxl-8 mb-3 mt-5 mb-md-0">
				<li class="list-group-item list-group-item-action list-group-item-light" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">1:1 문의</p>
				</li>
				<li class="list-group-item list-group-item-action list-group-item-dark" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">FAQ</p>
				</li>
				
			</ul>
		</div>
		<div id="notice_head" class="border col-md-12 p-2 mb-3">
			<h2 class="p-4 text-info">FAQ</h2>
			<p class="px-4 pb-4">자주 묻는 질문들입니다</p>
		</div>
		
		<div>
			<form action="#" method="post" class="col-12" id="faqForm">
				<div class="col-md-2 float-start">
					<select class="form-select" aria-label="Default select example" onchange="location.href=this.value">
					  <option selected value="#">전체</option>
					  <option value="#">AS 관련 문의</option>
					  <option value="#">~~ 관련 문의</option>
					</select>
				</div>
				<div class="col-6 float-end d-inline-flex">
		     	<div class="col-md-4">
		     		<select class="form-select">
					  <option selected>제목+내용</option>
					  <option value="">제목</option>
					  <option value="">내용</option>
					</select>
			    </div>
			    <div class="col-md-5">
					<input class="formText" type="text" style="height: 38px; width: 100%">
				</div>
				<div class="col-md-3">
				<button style="width: 100%" class="btn btn-default btn-secondary">검색</button>
				</div>
				</div>
			</form>
		</div>
		
		<div class="d-inline-block mt-3 mb-2 border-top border-3 border-dark" style="height: 420px; width: 100%">
			
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col"><span class="glyphicon glyphicon-star" aria-hidden="true"></span></th>
			      <th scope="col">TAG</th>
			      <th scope="col" colspan="3">제목</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<!-- 반복문으로 modal생성/seq번호 id에 부여 -->
			  	<!-- 마찬가지로 반복문으로 table 작성 seq로 modal 연결-->
			    <tr data-bs-toggle="modal" data-bs-target="#staticBackdrop">
			      <th scope="row">1</th>
			      <td >[as]</td>
			      <td colspan="3">어쨌든 공지사항입니다.</td>
			    </tr>
			    <tr data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
			      <th scope="row">2</th>
			      <td>[as]</td>
			      <td colspan="3">Thornton</td>
			    </tr>
			    <tr data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
			      <th scope="row">3</th>
			      <td>[~~]</td>
			      <td colspan="3">Spider</td>
			    </tr>
			  </tbody>
			</table>
			
			<!-- Modal -->
			<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        asdasdas
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Understood</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		
		<div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        123123
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Understood</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		
		<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        ..
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Understood</button>
			      </div>
			    </div>
			  </div>
			</div>
		</div>
		
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
		    <li class="page-item disabled">
		      <a class="page-link">Previous</a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">5</a></li>
		    <li class="page-item"><a class="page-link" href="#">6</a></li>
		    <li class="page-item"><a class="page-link" href="#">7</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#">Next</a>
		    </li>
		  </ul>
		</nav>
	</main>