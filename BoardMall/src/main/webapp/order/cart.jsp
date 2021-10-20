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
			<h3 class="my-4 fw-bold">장바구니</h3>
			<table class="w-100 text-center p-3">
				<tr class="bg-light h-100 border border-secondary border-end-0 border-start-0">
					<th><input type="checkbox" style="width: 15px; height: 15px;" class="">
					<th></th>
					<th>상품명</th>
					<th>수량</th>
					<th>상품금액</th>
					<th>합계금액</th> 
					<th>찜/삭제</th>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" onclick="location.href='#'">찜하기</button>
						<button class="mb-2 bg-white border w-100" onclick="location.href='#'">삭제</button>
					</td>
				</tr>
				
			<!-- 테스트용 추가 -->
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">찜하기</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">찜하기</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">찜하기</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">찜하기</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
			</table>
		</div>
		
		<!-- 상품 버튼 -->
		<div class="row mb-2">
			<div class="col-3 col-md-3 col-sm-3">
				<button class="mb-2 bg-white border w-100 fs-5">선택 상품 삭제</button>
			</div >
			<div class="col-3 col-md-3 col-sm-3">
				<button class="mb-2 bg-white border w-100 fs-5">선택 상품 찜</button>
			</div>
		</div>
		
		<!-- 상품 합계 -->
		<table class="row mb-5 border text-center bg-light" style="height: 100px;">
			<tr class="align-middle w-100" style="height: 100px; width: 110%">
				<td class="col-3 col-md-3 col-sm-3 fw-bold fs-3 align-self-center text-start"
					style="width:20%;">
					주문 합계
				</td>
				<td class="align-self-center text-end fw-bold fs-2" style="width:10%;">
				</td>
				<td class="col-3 col-md-3 col-sm-3 align-self-center text-end" style="width:35%;">
					총 <strong>00</strong> 개의 상품 금액 <br>
					<strong>00,000</strong>원
				</td>
				<td class="align-self-center fw-bold fs-2" style="width:10%;">
					= 
				</td>
				<td class="col-3 col-md-3 col-sm-3 align-self-center text-end" style="width:120px;">
					합계 <br>
					<strong>00,000</strong>원
				</td>
				<td class="col-3 col-md-3 col-sm-3 align-self-center text-end" style="width:15%;">
				</td>
			</tr>
		</table>
		
		<!-- 주문하기 버튼 -->
		<div class="col-12 col-md-12 col-sm-12 text-center">
			<button class="mb-2 bg-dark border text-white w-25 fw-bold fs-3" style="height:60px;"
			 onclick="location.href='#'">
				상품 주문하기
			</button>
		</div>
		
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

