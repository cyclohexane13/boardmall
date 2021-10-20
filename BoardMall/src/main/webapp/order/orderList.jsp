<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- 장바구니 화면 구성 -->
<div class="container">

	<!-- 사이드 바 -->
	<div class="col-3 px-1 bg-dark position-fixed" id="sticky-sidebar">
		<%@ include file="../member/mypage_sidebar.jsp"%>
	</div>

	<!-- 장바구니 구성  -->
	<div class="col offset-3 py-3" id="main">
		<!-- 상품 리스트 -->
		<div class="row mb-3">
			<h3 class="my-4 fw-bold">주문내역</h3>
			<table class="w-100 text-center p-3">
				<tr class="bg-light h-100 border border-secondary border-end-0 border-start-0">
					<th>주문일자</th>
					<th></th>
					<th>상품명</th>
					<th>수량</th>
					<th>상품금액</th>
					<th>합계금액</th> 
					<th>주문 상태</th>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 10%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 10%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				
			<!-- 테스트용 추가 -->
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 15%">
						2021.10.19
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
					</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						0 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td class="fw-bold" style="width:10%;" >
						<!-- 주문 상태 -->
						주문 중
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 페이징 -->
		<nav aria-label="Page navigation">
			<ul class=" pagination justify-content-center">
		    	<li class="page-item">
		    		<a class="page-link" href="#" aria-label="Previous">
			        	<span aria-hidden="true">&laquo;</span>
		    		</a>
		   		</li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			     	<a class="page-link" href="#" aria-label="Next">
			       		<span aria-hidden="true">&raquo;</span>
			     	</a>
		   		</li>
		 	</ul>
		</nav>
		
	</div> <!-- #main -->
</div> <!-- container -->

<section style="height: 250px;"></section>


<style>
nav#sub_menu {
	width: 15%;
	position: fixed;
	margin-top: 10px;
	margin-right: 30px;
}

nav#sub_menu ul {
	list-style: none;
}

nav#sub_menu ul a {
	text-decoration: none;
}

h1 {
	font-size: 25px;
	padding: 5px;
}

.menu li a {
	height: 30px;
	line-height: 20px;
	display: block;
	padding: 0 20px;
	font-size: 15px;
	color: black;
}

.menu li {
	margin-bottom: 10px;
	border-bottom: 1px solid #efefef;
}

.menu li a:hover {
	background-color: gray;
	color: white;
}
</style>


<%@ include file="../footer.jsp"%>

