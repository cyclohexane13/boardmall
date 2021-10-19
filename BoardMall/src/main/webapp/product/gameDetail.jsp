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
					<div id="top_box" class="box_selected">
						<div>
							<img src="resources/images/dice_icon.png" width="60" height="60">
						</div>
						<div>보드게임</div>
						<div>다양한 보드게임을 둘러보세요.</div>
					</div>
				</div>
			</div>
			
			<!-- 게임 상세 -->
			<div id="gameDetatil" class="border-top border-2 border-dark my-3">
				<!-- 게임 정보 -->
				<div id="gameInfo" class="px-4 pt-5">
					<h3>게임 제목입니다</h3>
					<div id="innerBox" class="mt-4">
						<div id="gameThum">
							<img src="resources/images/no_thum.jpg" width="425" height="425">
						</div>
						<div id="infoBox" class="ps-3">
							<ul style="min-height:228px;width:520px;overflow:hidden;">
								<li>
									<em>가격</em> 89,000원
								</li>
								<li>
									<em>게임인원</em> 1명~4명
								</li>
								<li>
									<em>게임시간</em> 60분~120분
								</li>
								<li>
									<em>장르</em> 테마 집중형 게임, 튜닝 가능 게임
								</li>
								<li>
									<em>시스템</em> 손에 든 카드관리, 액션 포인트, 역할 맡기, 협력
								</li>
							</ul>
						</div>
						<!-- 찜하기, 장바구니 담기 -->
						<div  class="ps-4 mt-4">
							<form>
								<table class="w-100 mb-3">
									<tr>
										<th style="width:25%;">수량</th>
										<td>
											<input type="button" name="minus_ea" value="-" onclick="javascript:this.form.buy_ea.value--;">
											<!-- 0 아래로 내려가지 않도록.. -->
											<input type="text" name="buy_ea" value="1" id="result" class="form_input" size="1" style="text-align:center;">
											<input type="button" name="plus_ea" value="+" onclick="javascript:this.form.buy_ea.value++;">
										</td>
									</tr>
								</table>			
							</form>
							<div class="multi_opt my-4 pe-2">
								<div class="opt_total">
									<span class="title">총금액</span>
									<strong><span class="sell_prc_str_total" style="float:right;font-size:20px">30,000 원</span></strong>
								</div>
							</div>
							
							<!-- 버튼 -->
							
							<div class="btn w-100 my-2 p-0">
								<span class="btn btn-outline-secondary py-3" style="width:17%"><a href="#">&#x2764</a></span>
								<span class="btn btn-outline-secondary py-3" style="width:40%"><a href="#">장바구니</a></span>
								<span class="btn btn-outline-secondary py-3" style="width:40%"><a href="#">바로구매</a></span>
							</div>
							
						</div>
					</div>
				</div>
				<!-- 게임 설명 -->
				<div id="gameTabMenu" class="mt-4">
					<ul>
						<li>게임소개</li>
						<li></li>
					</ul>
				</div>
				
				<div class="border w-100 my-5" id="gameContent">
					<dl>
						<div>
							<img src="resources/images/1632900487_AHC60_desc_780.jpg">
						</div>
					</dl>
				</div>
			</div>
		
	</article>	



<%@ include file="../footer.jsp" %>