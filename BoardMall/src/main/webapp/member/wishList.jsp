<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- 위시리스트 화면 구성 -->
<div class="container">

	<!-- 사이드 바 -->
	<div class="col-3 px-1 bg-dark position-fixed" id="sticky-sidebar">
		<%@ include file="mypage_sidebar.jsp"%>
	</div>

	<!-- 위시리스트 구성  -->
	<div class="col offset-3 py-3" id="main">
		<!-- 프로필 -->
		<div class="bg-light text-dark"
			style="float: left; width: 100%; height: 100%;">
			<div style="width: 500px;">
				<img src="../resources/images/LOGO.png" width="100" height="100"
					style="position: relative; top: 70px; left: 20px;">

				<div style="position: relative; left: 150px; bottom: 20px;">
					<p style="font-size: 30px;">OOO님 반갑습니다.</p>
					<p>현재 등급은 OO입니다.</p>
				</div>
			</div>
		</div>
		<!-- 리스트 -->
		<div class="row mb-5">
			<h3 class="my-4">찜 리스트</h3>
			<table class="w-100 text-center p-3">
				<tr class="bg-light h-100 border border-secondary border-end-0 border-start-0" style="height: 20%;">
					<th><input type="checkbox" style="width: 15px; height: 15px;" class="">
					<th></th>
					<th>상품명</th>
					<th>수량</th>
					<th>상품금액</th>
					<th>주문/삭제</th>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%">
						<input type="checkbox" style="width: 15px; height: 15px;">
					</td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<input type="number" value="1" min="1" max="100">
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				
			<!-- 테스트용 추가 -->
				<tr class="border-bottom border-secondary">
					<td style="width: 5%"><input type="checkbox" style="width: 15px; height: 15px;"></td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">제품 이름</td>
					<td style="width: 5%;"><input type="number" value="1" min="1" max="100"></td>
					<td class="fw-bold" style="width: 20%;">상품 금액 원</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%"><input type="checkbox" style="width: 15px; height: 15px;"></td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">제품 이름</td>
					<td style="width: 5%;"><input type="number" value="1" min="1" max="100"></td>
					<td class="fw-bold" style="width: 20%;">상품 금액 원</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%"><input type="checkbox" style="width: 15px; height: 15px;"></td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">제품 이름</td>
					<td style="width: 5%;"><input type="number" value="1" min="1" max="100"></td>
					<td class="fw-bold" style="width: 20%;">상품 금액 원</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%"><input type="checkbox" style="width: 15px; height: 15px;"></td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">제품 이름</td>
					<td style="width: 5%;"><input type="number" value="1" min="1" max="100"></td>
					<td class="fw-bold" style="width: 20%;">상품 금액 원</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 5%"><input type="checkbox" style="width: 15px; height: 15px;"></td>
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="150" height="150"
						class="border" >
						</td>
					<td class="fw-bold" style="width: 25%; text-align: left; padding-left: 10px;">제품 이름</td>
					<td style="width: 5%;"><input type="number" value="1" min="1" max="100"></td>
					<td class="fw-bold" style="width: 20%;">상품 금액 원</td>
					<td style="width:10%;" >
						<button class="mb-2 bg-dark border text-white w-100" style="">장바구니</button>
						<button class="mb-2 bg-white border w-100">삭제</button>
					</td>
				</tr>
				
			</table>
		</div> <!-- row(리스트)-->
		
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

