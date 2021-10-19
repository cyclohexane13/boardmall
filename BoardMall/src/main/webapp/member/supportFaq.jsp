<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
	<style>
		
	</style>
	<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.6.0.js"></script>
	<script>
		$(function(){
			
		});
	</script>
	
	<main class="container">
	
		<!-- <div id="topmenu">
			<ul class="nav col-12 col-xxl-8 mb-3 mt-5 mb-md-0">
				<li class="list-group-item list-group-item-action list-group-item-dark" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">FAQ</p>
				</li>
				<li class="list-group-item list-group-item-action list-group-item-light" style="width: 250px; height: 60px; text-align: center; cursor: pointer;" onclick="location.href='#'">
				 <p class="text-dark" style="position: relative; top:10px;">1:1 문의</p>
				</li>
				
			</ul>
		</div>
		<div id="notice_head" class="border col-md-12 p-2 mb-3">
			<h2 class="p-4 text-info">FAQ</h2>
			<p class="px-4 pb-4">자주 묻는 질문들입니다</p>
		</div> -->
		
		<div id="top_menu">
            <div id="top_title">Service</div>
            <div id="top_content">
                <div id="top_box" class="box_selected">
                    <div>
                        <img src="resources/images/faq_icon.png" width="60" height="60">
                    </div>
                    <div>FAQ</div>
                    <div>자주 묻는 질문들을 확인해주세요.</div>
                </div>
                <div id="top_box2">
                    <div>
                        <img src="resources/images/qna_icon.png" width="60" height="60">
                    </div>
                    <div>1:1 문의</div>
                    <div>문의사항은 이곳에 입력해주세요.</div>
                </div>
            </div>
        </div>
		
		<div>
			<form action="#" method="post" class="col-12" id="faqForm">
				<div class="col-md-2 float-start">
					<select class="form-select" aria-label="Default select example" onchange="location.href=this.value">
					  <option selected value="#">전체</option>
					  <option value="#">제품 관련</option>
					  <option value="#">AS 관련</option>
					  <option value="#">구입/환불</option>
					  <option value="#">기타 문의</option>
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
		
		<div class="d-inline-block my-3 border-top border-3 border-dark" style="height: 400px; width: 100%; overflow: auto;">
			
			<div class="accordion" id="expen">
				<table class="table table-hover" style="table-layout: fixed;">
				  <thead class=" clear disabled">
				    <tr>
				      <th class="text-center" scope="col"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-border-width" viewBox="0 0 16 16"><path d="M0 3.5A.5.5 0 0 1 .5 3h15a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H.5a.5.5 0 0 1-.5-.5v-2zm0 5A.5.5 0 0 1 .5 8h15a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H.5a.5.5 0 0 1-.5-.5v-1zm0 4a.5.5 0 0 1 .5-.5h15a.5.5 0 0 1 0 1H.5a.5.5 0 0 1-.5-.5z"/></svg></th>
				      <th class="text-center" scope="col">tag</th>
				      <th class="text-center" scope="col" colspan="5">제목</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th class="text-center" scope="row">1</th>
				      	<th class="text-center">구입</th>
				      	<td colspan="5" class="text-center" data-bs-toggle="collapse" data-bs-target="#c1" aria-expended="false" aria-controls="c1">
							 <strong class="accordion-header text-center" id="head1">
						       ~~~는 어떻게 구매하나요?
							 </strong>
							 <div id="c1" class="accordion-collapse collapse text-center" aria-labelledby="head1" data-bs-parent="#expen">
							 	<div class="accordion-body">
							      <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
								</div>
							 </div>
					 	</td>
				     </tr>
				    <tr>
				      <th class="text-center" scope="row">2</th>
				      <th class="text-center">AS</th>
				      	<td colspan="5" class="text-center" data-bs-toggle="collapse" data-bs-target="#c2" aria-expended="false" aria-controls="c2">
							<strong class="accordion-header text-center" id="head2">
					    		구매한 제품의 구성품이 누락됐습니다.
							</strong>
							<div id="c2" class="accordion-collapse collapse text-center" aria-labelledby="haed2" data-bs-parent="#expen">
								<div class="accordion-body">
					  				<strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
					  			</div>
						 	</div>
					  	</td>
				    </tr>
				    <tr>
				      <th class="text-center" scope="row">3</th>
				      <th class="text-center">기타</th>
				      	<td colspan="5" class="text-center" data-bs-toggle="collapse" data-bs-target="#c3" aria-expended="false" aria-controls="c3">
							<strong class="accordion-header text-center" id="head3">
					    		입고를 원하는 제품이 있습니다.
							</strong>
							<div id="c3" class="accordion-collapse collapse text-center" aria-labelledby="haed3" data-bs-parent="#expen">
								<div class="accordion-body">
					  				<strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
					  			</div>
						 	</div>
					  	</td>
				    </tr>
				    
				    <tr>
				      <th class="text-center" scope="row">4</th>
				      <th class="text-center">기타</th>
				      	<td colspan="5" class="text-center" data-bs-toggle="collapse" data-bs-target="#c4" aria-expended="false" aria-controls="c4">
							<strong class="accordion-header text-center" id="head4">
					    		어쩌고저쩌고 예시
							</strong>
							<div id="c4" class="accordion-collapse collapse text-center" aria-labelledby="haed4" data-bs-parent="#expen">
								<div class="accordion-body">
					  				<strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
					  			</div>
						 	</div>
					  	</td>
				    </tr>
				    
				    <tr>
				      <th class="text-center" scope="row">5</th>
				      <th class="text-center">기타</th>
				      	<td colspan="5" class="text-center" data-bs-toggle="collapse" data-bs-target="#c5" aria-expended="false" aria-controls="c5">
							<strong class="accordion-header text-center" id="head5">
					    		궁시렁궁시렁 예시2
							</strong>
							<div id="c5" class="accordion-collapse collapse text-center" aria-labelledby="haed5" data-bs-parent="#expen"">
								<div class="accordion-body">
					  				<strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
					  			</div>
						 	</div>
					  	</td>
				    </tr>
				  </tbody>
				</table>
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
		    <li class="page-item">
		      <a class="page-link" href="#">Next</a>
		    </li>
		  </ul>
		</nav>
		
	</main>
	
<%@ include file="../footer.jsp" %>