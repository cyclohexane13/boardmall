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
					<div id="top_box" class="box_selected" onclick="location.href='productList.do'">
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
					<h3>${game.name }</h3>
					<div id="innerBox" class="mt-4">
						<div id="gameThum">
							<img src="resources/${game.image }" width="425" height="425" alt="${game.name }">
						</div>
						<div id="infoBox" class="ps-3">
							<ul style="min-height:228px;width:520px;overflow:hidden;">
								<li>
									<em>가격</em> <fmt:formatNumber type="number" maxFractionDigits="3" value="${game.salesprice}" /> 원
								</li>
								<li>
									<em>게임인원</em> ${game.minplayer }명~${game.maxplayer }명
								</li>
								<li>
									<em>게임시간</em> ${game.playtime }분
								</li>
								<li>
									<em>장르</em>
									<c:choose>
										<c:when test="${empty gameGerne}"> - </c:when>
										<c:otherwise>
											<c:forEach items="${gameGerne}" var="gerne" varStatus="i">
												${gerne}<c:if test="${!i.last}">, </c:if>
											</c:forEach>
										</c:otherwise>	
									</c:choose>
								</li>
								<li>
									<em>시스템</em> 
									<c:choose>
										<c:when test="${empty gameSystem}"> - </c:when>
										<c:otherwise>
											<c:forEach items="${gameSystem }" var="system" varStatus="i">
												${system}<c:if test="${!i.last}">, </c:if>
											</c:forEach>
										</c:otherwise>	
									</c:choose>
								</li>
							</ul>
						</div>
						<!-- 찜하기, 장바구니 담기 -->
						<div  class="ps-4 mt-4">
							<form name="formAmount">
								<table class="w-100 mb-3">
									<tr>
										<th style="width:25%;">수량</th>
										<td>
											<input type="button" value="-" onclick="del();">
											<input type="text" name="amount" value="1" onchange="change();" class="form_input" size="1" style="text-align:center;">
											<input type="button" value="+" onclick="add();">
										</td>
									</tr>
								</table>			
							
								<div class="multi_opt my-4 pe-2">
									<div class="opt_total">
										<span class="title">총금액</span>
										<strong><span class="sell_prc_str_total" style="float:right;font-size:20px">
											<input type="hidden" name="sellPrice" value="${game.salesprice}">
											<input type="text" name="sum" size="7" value="${game.salesprice}" readonly style="border:none;text-align:right;font-size:25px"> 원
										</span></strong>
									</div>
								</div>
							</form>
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
							<c:forEach items="${gameDescImg }" var="descImg">
								<img src="resources/${descImg }">
							</c:forEach>
						</div>
					</dl>
				</div>
			</div>
		
	</article>	



<%@ include file="../footer.jsp" %>