<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<div class="clear"></div>
	
	<article>
		<div class="container">
		
			<!-- 공통부분 -->
			<div id="top_menu">
				<div id="top_title">Product</div>
				<div id="top_content">
					<div id="top_box">
						<div>
							<img src="resources/images/dice_icon.png" width="60" height="60">
						</div>
						<div>보드게임</div>
						<div>다양한 보드게임을 둘러보세요.</div>
					</div>
				</div>
			</div>
			
			<!-- 글목록 -->
			<div id="productList" >
				<!-- 검색 -->
				<div class="nav col-12">
					<form class="w-100">
						<div id="gameSearchOption">
							<!-- Basic dropdown 게임인원 -->
						    <button class="btn btn-muted border dropdown-toggle col-6 ms-3 py-3" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 인원</button>
							<div class="dropdown-menu">
						   		<a class="dropdown-item">
						     	<!-- Default unchecked -->
						      		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox1">
						        		<label class="custom-control-label" for="checkbox1">전체</label>
						      		</div>
						    	</a>
						   		<a class="dropdown-item" href="#">
						   	   		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox2">
						      			<label class="custom-control-label" for="checkbox2">2~4명</label>
						     		</div>
						    	</a>
						  		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox3">
						        		<label class="custom-control-label" for="checkbox3">3~6명</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">4명 이상</label>
						      		</div>
						   		 </a>
						  	</div>
						  <!-- Basic dropdown 게임시간-->
						    <button class="btn btn-muted border dropdown-toggle col-6" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 시간</button>
							<div class="dropdown-menu">
						   		<a class="dropdown-item">
						     	<!-- Default unchecked -->
						      		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox1">
						        		<label class="custom-control-label" for="checkbox1">전체</label>
						      		</div>
						    	</a>
						   		<a class="dropdown-item" href="#">
						   	   		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox2">
						      			<label class="custom-control-label" for="checkbox2">30분</label>
						     		</div>
						    	</a>
						  		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox3">
						        		<label class="custom-control-label" for="checkbox3">60분</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">90분</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox5">
						        		<label class="custom-control-label" for="checkbox5">120분</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox6">
						        		<label class="custom-control-label" for="checkbox6">180분</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox7">
						        		<label class="custom-control-label" for="checkbox7">180분 초과</label>
						      		</div>
						   		 </a>
						  	</div>
						  <!-- Basic dropdown -->
						    <button class="btn btn-muted border dropdown-toggle col-6" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">시스템</button>
							<div class="dropdown-menu" id="gameSystem">
						   		<span>
							   		<a >
							       		<input type="checkbox" class="custom-control-input" id="checkbox1">
							        	<label class="custom-control-label" for="checkbox1">전체</label>
							    	</a><br>
							   		<a >
							   	   		<input type="checkbox" class="custom-control-input" id="checkbox2">
							      		<label class="custom-control-label" for="checkbox2">연기하기</label>
							    	</a><br>
							  		<a >
							     		<input type="checkbox" class="custom-control-input" id="checkbox3">
							        	<label class="custom-control-label" for="checkbox3">액션 포인트</label>
							   		</a><br>
							   		<a>
							     		<input type="checkbox" class="custom-control-input" id="checkbox4">
							        	<label class="custom-control-label" for="checkbox4">영역 둘러싸기</label>
							   		 </a><br>
							   		 <a>
							     		<input type="checkbox" class="custom-control-input" id="checkbox5">
							        	<label class="custom-control-label" for="checkbox5">베팅</label>
							   		 </a><br>
							   		<a >
										<input type="checkbox" class="custom-control-input" id="checkbox6">
						        		<label class="custom-control-label" for="checkbox6">카드 드래프트</label>
							   		 </a><br>
							   		 <a >
							   		 	<input type="checkbox" class="custom-control-input" id="checkbox7">
							        	<label class="custom-control-label" for="checkbox7">협력</label>
							   		 </a><br>
							   		 <a>
							   		 	<input type="checkbox" class="custom-control-input" id="checkbox8">
							        	<label class="custom-control-label" for="checkbox8">철도 그리기</label>
							   		 </a><br>
							   		 <a>
							   		 	<input type="checkbox" class="custom-control-input" id="checkbox9">
							        	<label class="custom-control-label" for="checkbox9">주사위 굴림</label>
							   		 </a><br>
							   		 <a >
							   		 	<input type="checkbox" class="custom-control-input" id="checkbox10">
							        	<label class="custom-control-label" for="checkbox10">손에 든 카드관리</label>
							   		 </a><br>
							   		 <a>
							   		 	<input type="checkbox" class="custom-control-input" id="checkbox11">
						        		<label class="custom-control-label" for="checkbox11">그림 그리기</label>
							   		 </a><br>
							   		 <a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox12">
						        		<label class="custom-control-label" for="checkbox12">조립식 게임판</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox13">
						        		<label class="custom-control-label" for="checkbox13">팀 플레이</label>
						   		 	</a>
						   		 </span>
						   		 <span>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox14">
						        		<label class="custom-control-label" for="checkbox14">패턴인식</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox15">
						        		<label class="custom-control-label" for="checkbox15">참가자 탈락시키기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox16">
						        		<label class="custom-control-label" for="checkbox16">복불복</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox17">
						        		<label class="custom-control-label" for="checkbox17">역할 맡기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox18">
						        		<label class="custom-control-label" for="checkbox18">손에 든 카드관리 네트워크 건설</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox19">
						        		<label class="custom-control-label" for="checkbox19">세트 모으기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox20">
						        		<label class="custom-control-label" for="checkbox20">동시선택</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox21">
						        		<label class="custom-control-label" for="checkbox21">주식</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox22">
						        		<label class="custom-control-label" for="checkbox22">치고받기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox23">
						        		<label class="custom-control-label" for="checkbox23">시간 추적</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox24">
						        		<label class="custom-control-label" for="checkbox24">트릭테이킹</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox25">
						        		<label class="custom-control-label" for="checkbox25">플레이어간 다양한 능력발휘</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox26">
						        		<label class="custom-control-label" for="checkbox26">일꾼 놓기</label>
						   		 	</a>
						   		 </span>
						   		 <span>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox27">
						        		<label class="custom-control-label" for="checkbox27">프로그래밍</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox28">
						        		<label class="custom-control-label" for="checkbox28">영역내 영향력</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox29">
						        		<label class="custom-control-label" for="checkbox29">영역이동</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox30">
						        		<label class="custom-control-label" for="checkbox30">경매</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox31">
						        		<label class="custom-control-label" for="checkbox31">캠페인, 전투카드 위주</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox32">
						        		<label class="custom-control-label" for="checkbox32">상품 투기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox33">
						        		<label class="custom-control-label" for="checkbox33">덱(풀) 만들기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox34">
						        		<label class="custom-control-label" for="checkbox34">격자에서 이동</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox35">
						        		<label class="custom-control-label" for="checkbox35">육각 타일과 카운터</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox36">
						        		<label class="custom-control-label" for="checkbox36">기억력</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox37">
						        		<label class="custom-control-label" for="checkbox37">종이에 기록</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox38">
						        		<label class="custom-control-label" for="checkbox38">패턴 만들기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox39">
						        		<label class="custom-control-label" for="checkbox39">물류</label>
						   		 	</a>
						   		 </span>
						   		 <span>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox40">
						        		<label class="custom-control-label" for="checkbox40">지점간 이동</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox41">
						        		<label class="custom-control-label" for="checkbox41">가위바위보</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox42">
						        		<label class="custom-control-label" for="checkbox42">주사위(룰렛) 굴리고 이동</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox43">
						        		<label class="custom-control-label" for="checkbox43">비밀리 유닛 배치</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox44">
						        		<label class="custom-control-label" for="checkbox44">시뮬레이션</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox45">
						        		<label class="custom-control-label" for="checkbox45">퍼즐</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox46">
						        		<label class="custom-control-label" for="checkbox46">노래하기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox47">
						        		<label class="custom-control-label" for="checkbox47">스토리텔링</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox48">
						        		<label class="custom-control-label" for="checkbox48">타일 놓기</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox49">
						        		<label class="custom-control-label" for="checkbox49">투표</label>
						   		 	</a><br>
						   		 	<a>
						   		 		<input type="checkbox" class="custom-control-input" id="checkbox50">
						        		<label class="custom-control-label" for="checkbox50">거래/교역</label>
						   		 	</a>
						   		 </span>
						  	</div>
						  <!-- Basic dropdown -->
						    <button class="btn btn-muted border dropdown-toggle col-6" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 장르</button>
							<div class="dropdown-menu">
						   		<a class="dropdown-item">
						     	<!-- Default unchecked -->
						      		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox1">
						        		<label class="custom-control-label" for="checkbox1">전체</label>
						      		</div>
						    	</a>
						   		<a class="dropdown-item" href="#">
						   	   		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox2">
						      			<label class="custom-control-label" for="checkbox2">전략게임</label>
						     		</div>
						    	</a>
						  		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox3">
						        		<label class="custom-control-label" for="checkbox3">테마 집중형 게임</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">튜닝 가능 게임</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox5">
						        		<label class="custom-control-label" for="checkbox5">가족 게임</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox6">
						        		<label class="custom-control-label" for="checkbox6">파티 게임</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox7">
						        		<label class="custom-control-label" for="checkbox7">어린이 게임</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox8">
						        		<label class="custom-control-label" for="checkbox8">퍼즐</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox9">
						        		<label class="custom-control-label" for="checkbox9">악세사리/게임 내용물</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox10">
						        		<label class="custom-control-label" for="checkbox10">방탈출 테이블 게임</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox11">
						        		<label class="custom-control-label" for="checkbox11">기타</label>
						      		</div>
						   		 </a>
						  	</div>
						  <!-- Basic dropdown -->
						    <button class="btn btn-muted border dropdown-toggle col-6" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">테마</button>
							<div class="dropdown-menu">
						   		<a class="dropdown-item">
						     	<!-- Default unchecked -->
						      		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox1">
						        		<label class="custom-control-label" for="checkbox1">전체</label>
						      		</div>
						    	</a>
						   		<a class="dropdown-item" href="#">
						   	   		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox2">
						      			<label class="custom-control-label" for="checkbox2">2~4명</label>
						     		</div>
						    	</a>
						  		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox3">
						        		<label class="custom-control-label" for="checkbox3">3~6명</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">4명 이상</label>
						      		</div>
						   		 </a>
						  	</div>
							
						
							
						</div>
					</form>
				</div>
				
				<ul id="products" class="nav my-5 justify-content-center">
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">가나다라마바사아자차카타파하가나다라마바사가나다라마바사아자차카타파하가나다라마바사</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div >
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
					<li class="border px-1 m-1">
						<div class="thum">
							<a href="#"><img src="resources/images/LOGO.png" width="235" height="350" class="border-bottom mb-2"></a>
						</div>
						<div id="wrap">
							<div>
								<p><a href="#">게임 이름</a></p>
							</div>	
							<table class="w-100 my-2">
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
									<td class="text-end">91,000원</td>
								</tr>	
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon01.png"> 게임인원</th>
									<td class="text-end">2~4명</td>
								</tr>
								<tr>
									<th class="text-start text-secondary"><img src="resources/images/best_icon02.png"> 게임시간</th>
									<td class="text-end">120분</td>
								</tr>
							</table>
						</div>
					</li>
				</ul>
				
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
				
			</div>
				
		</div>	
		
	</article>	










<%@ include file="../footer.jsp" %>