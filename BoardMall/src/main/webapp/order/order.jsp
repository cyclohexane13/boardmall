<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

	<!-- 주문 페이지 -->
	<div class="container">
		<div class="row mb-3">
			<h3 class="my-4 fw-bold">주문서 작성/결제</h3>
			<hr >
			<h5 class="my-2 fw-bold"> 주문 상세 내역</h5>
			<table class="w-100 text-center p-3">
				<tr class="bg-light h-100 border border-secondary border-end-0 border-start-0">
					<th></th>
					<th>상품명</th>
					<th>수량</th>
					<th>상품금액</th>
					<th>합계금액</th> 
				</tr>
				<tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr>
				
			<!-- 테스트용 추가 -->
				<tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr><tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr><tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr><tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr><tr class="border-bottom border-secondary">
					<td style="width: 10%;">
						<img src="../resources/images/LOGO.png" alt="상품이미지" width="110" height="110"
						class="border" >
						</td>
					<td class="fw-bold text-start" style="width: 25%; padding-left: 10px;">
						제품 이름
					</td>
					<td style="width: 5%;">
						<strong>0</strong> 개
					</td>
					<td class="fw-bold" style="width: 20%;">
						상품 금액 원
					</td><td class="fw-bold" style="width: 15%;">
						합계 금액 원
					</td>
				</tr>
			</table>
		</div> <!-- 상품 리스트 -->
		
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
		</table> <!-- 상품 합계 -->
		
		<!-- 주문서 작성 -->
		<div class="row g-5">
			<div class="col-12 col-sm-12 col-md-12 col-lg-12">
				<form class="needs-validation" novalidate>
				
					<!-- 주문자 정보 -->
					<div class="row g-3 d-block mb-5">
						<h3 class="mb-4 pb-3 fw-bold border-bottom">주문자 정보</h3>
						<div class="w-50 col-12">
							<label for="firstName" class="form-label">주문자 명</label> 
							<input
								type="text" class="form-control" id="firstName" placeholder="name"
								value="" required>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
						<div class="w-50 col-12">
							<label for="email" class="form-label">이메일 <span
								class="text-muted">(선택사항)</span></label> <input type="email"
								class="form-control" id="email" placeholder="you@example.com">
							<div class="invalid-feedback">Please enter a valid email
								address for shipping updates.</div>
						</div>
						<div class="w-50 col-12">
							<label for="firstName" class="form-label">전화번호</label> 
							<input
								type="tel" class="form-control" id="firstName" placeholder="' - ' 제외 숫자만 입력하세요"
								value="" required>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
					</div>
					
					<!-- 배송 정보 -->
					<div class="row g-3 d-block mb-5">
						<div class="mb-4 pb-3 fs-2 fw-bold border-bottom">배송 정보</div>
						<div class="fw-bold">
							<input type="checkbox" style="width:15px; height: 15px;"> 주문자 정보와 동일
						</div>
						<div class="w-50 col-12">
							<label for="firstName" class="form-label">수령자</label> 
							<input
								type="text" class="form-control" id="firstName" placeholder="name"
								value="" required>
						</div>
						<div class="w-50 col-12">
							<label for="email" class="form-label">수령자 이메일 <span
								class="text-muted">(선택사항)</span></label> <input type="email"
								class="form-control" id="email" placeholder="you@example.com">
						</div>
						<div class="w-50 col-12">
							<label for="firstName" class="form-label">전화번호</label> 
							<input
								type="tel" class="form-control" id="firstName" placeholder="' - ' 제외 숫자만 입력하세요"
								value="" required>
						</div>
						
						<div class="w-50 col-12">
							<div class="input-group">
								<label for="firstName" class="form-label w-100">우편 번호</label>
								<input type="text" class="form-control" id="firstName" placeholder="우편번호"
									value="" required style="float: left;">
								<span class="input-group-btn">
									<button class="btn btn-primary btn-default" type="submit" style="float: right;">우편번호 검색</button>
								</span>
							</div>
						</div>
						
						<div class="col-12">
							<label for="address" class="form-label">주소</label> <input
								type="text" class="form-control" id="address"
								placeholder="1234 Main St" required>
						</div>

						<div class="col-12">
							<label for="address2" class="form-label">상세 주소 <span
								class="text-muted">(선택사항)</span></label> <input type="text"
								class="form-control" id="address2"
								placeholder="Apartment or suite">
						</div>
					</div>
					
					<!-- 최종 결제 금액 -->
					<table class="row mb-5 border text-center bg-light" style="height: 90px;">
						<tr class="align-middle w-100" style="height: 90px; width: 110%">
							<td class="col-3 col-md-3 col-sm-3 fw-bold fs-3 align-self-center text-start"
								style="width:20%;">
							</td>
							<td class="align-self-center text-end fw-bold fs-2">
							</td>
							<td class="col-3 col-md-3 col-sm-3 align-self-center text-end">
							</td>
							<td class="align-self-center fw-bold fs-2" style="width:10%;">
							</td>
							<td class="col-3 col-md-3 col-sm-3 align-self-center text-end pe-4 fw-bold" style="width:50%;">
								<span>최종 결제 금액</span> <span class="fw-bolder fs-2 ms-2">00,000 원</span>
							</td>
							<td class="col-3 col-md-3 col-sm-3 align-self-center text-end">
							</td>
						</tr>
					</table> <!-- 최종 결제 금액 -->
		
					<!-- 주문하기 버튼 -->
					<div class="col-12 col-md-12 col-sm-12 text-center">
						<button class="mb-2 bg-dark border text-white w-25 fw-bold fs-3" style="height:60px;"
						 onclick="location.href='#'">
							결제하기
						</button>
					</div>
				</form>
			</div>
		</div><!-- 주문서 작성 -->
	</div><!-- container -->
	
	<section style="height: 250px;"></section>
	
<%@ include file="../footer.jsp"%>