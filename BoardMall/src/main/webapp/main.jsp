<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<link href="resources/css/main.css" rel="stylesheet">

<div class="clear"></div>
<!-- css : .clear{clear:both;} -->

<!-- 메인 화면 -->
<!-- 이미지 슬라이드 -->
<div class="w-auto mb-5">
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel" style="height: 450px;">
		<!-- 하단 버튼 -->
		<div class="carousel-indicators w-75">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active bg-danger" aria-current="true"
				aria-label="Slide 1" value="보드게임 이름">
				<!-- 보드게임 이름 -->
			</button>
			<button type="button" class="bg-danger"
				data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
				aria-label="Slide 2"></button>
			<button type="button" class="bg-danger"
				data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
				aria-label="Slide 3"></button>
			<button type="button" class="bg-danger"
				data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
				aria-label="Slide 4"></button>
		</div>
		<!-- 내용(이미지) -->
		<div class="carousel-inner w-75 mx-auto">
			<c:forEach items="${imageSliderList }" var="imageVO" varStatus="i">
			
				<div class="carousel-item 
					<c:if test="${i.first}">
						active
					</c:if>
				">
				<a href="#"> <img class="d-block w-75 mx-auto"
					src="resources/${imageVO.image }" alt="Game" width="70%" height="400">
				</a>
				</div>
			</c:forEach>
			
		</div>
		<!-- 좌우 버튼 -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"
				style="background-color: red;"></span> <span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"
				style="background-color: red;"></span> <span class="visually-hidden">Next</span>
		</button>
	</div>
</div>

<!-- 테이블 메뉴 -->
<div class="container" style="width: 80%;">
	<table class="w-100 text-white">
		<tr class="row w-80 mx-auto" style="height: 200px;">
			<td class="col-md-6 col-sm-6"
				style="background-color: rgba(255, 130, 0, 0.8);">Promotion or
				SNS</td>
			<td id="carouselExampleControls"
				class="carousel slide col-md-6 col-sm-6 px-0"
				data-bs-ride="carousel">
				<div class="carousel-inner position-absolute">
					<div class="carousel-item active row">
						<div class="col-md-6 col-sm-6 d-table-cell"
							style="background-color: rgba(80, 80, 255, 0.8); height: 200px;">커뮤니티
							카테고리</div>
						<div class="col-md-6 col-sm-6 d-table-cell"
							style="background-color: rgba(10, 110, 205, 0.8);">해당 카테고리
							인기 게시글</div>
					</div>
					<div class="carousel-item row" style="width: 100%;">
						<div class="col-md-6 col-sm-6 d-table-cell"
							style="background-color: rgba(80, 80, 255, 0.8); height: 200px;">커뮤니티
							카테고리</div>
						<div class="col-md-6 col-sm-6 d-table-cell"
							style="background-color: rgba(10, 110, 205, 0.8);">해당 카테고리
							인기 게시글</div>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"
						style="background-color: rgba(0, 0, 0, 0.5);"></span> <span
						class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"
						style="background-color: rgba(0, 0, 0, 0.5);"></span> <span
						class="visually-hidden">Next</span>
				</button>
			</td>
		</tr>
		<tr class="row w-80 mx-auto" style="height: 200px;">
			<td class="col-md-3 col-sm-3"
				style="background-color: rgba(50, 150, 50, 0.8);">오시는 길</td>
			<td class="col-md-3 col-sm-3"
				style="background-color: rgba(255, 50, 50, 0.8);">Best 제품</td>
			<td class="col-md-6 col-sm-6"
				style="background-color: rgba(144, 109, 59, 0.8);">(필독)공지사항</td>
		</tr>
	</table>

	<!-- 베스트 상품 -->
	<div class="clear"></div>
	<div class="album py-5">
		<h2>베스트 게임</h2>
		<div class="row row-cols-sm-2 g-3 mb-5">
		
		<c:forEach items="${gameList }" var="gameVO">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 ">
				<div class="hovereffect border border-2" style="height: 200px;">
					<a href="#"> <img class="img-responsive w-100 h-100"
						src="resources/${gameVO.image }" alt="Game">
						<div class="overlay">
							<h2 class="fw-bold">${gameVO.name }</h2>
							<!-- <a class="info" href="#">link here</a> -->
							<table class="w-100 h-75 text-white py-2">
								<tr class="my-3">
									<th class="text-start ps-3"><img
										src="resources/images/ico_cost.png"></th>
									<td class="text-end pe-3">${gameVO.salesprice }</td>
								</tr>
								<tr class="my-3">
									<th class="text-start ps-3"><img
										src="resources/images/best_icon01.png" width="20px"></th>
									<td class="text-end pe-3">${gameVO.minplayer }명~${gameVO.maxplayer }명</td>
								</tr>
								<tr class="my-3">
									<th class="text-star ps-3"><img
										src="resources/images/best_icon02.png" width="20px"></th>
									<td class="text-end pe-3">${gameVO.playtime }</td>
								</tr>
							</table>
						</div>
					</a>
				</div>
			</div>
		</c:forEach>
			
		<!-- row row-cols-sm-2 g-3 -->
	</div>
	<!-- best 상품 end -->

	<!-- 하단 버튼 -->
	<div class="clear"></div>
	<div class="row row-cols-sm-2 g-1 text-center mb-5">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a class="btn btn-outline-primary btn-lg fw-bold border-2 w-75" href="faq.do">
				FAQ
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a class="btn btn-outline-dark btn-lg fw-bold border-2 w-75" href="support.do">
				Contact
			</a>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<a class="btn btn-outline-success btn-lg fw-bold border-2 w-75" href="notice.do">
				Notice
			</a>
		</div>
	</div>
</div> <!-- container -->

<%@ include file="../footer.jsp"%>