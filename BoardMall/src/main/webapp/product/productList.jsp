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
			
			<!-- 글목록 -->
			<div id="productList" >
				<!-- 검색 -->
				<div class="nav col-12">
					<form class="w-100">
						<div id="gameSearchOption">
							<!-- Basic dropdown 게임인원 -->
						    <button class="btn btn-muted border dropdown-toggle col-9 ms-2 py-3" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 인원</button>
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
						        		<label class="custom-control-label" for="checkbox3">4~6명</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">7명 이상</label>
						      		</div>
						   		 </a>
						  	</div>
						  <!-- Basic dropdown 게임시간-->
						    <button class="btn btn-muted border dropdown-toggle col-9" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 시간</button>
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
						      			<label class="custom-control-label" for="checkbox2">30분 미만</label>
						     		</div>
						    	</a>
						  		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox3">
						        		<label class="custom-control-label" for="checkbox3">30~60분</label>
						     		</div>
						   		</a>
						   		<a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox4">
						        		<label class="custom-control-label" for="checkbox4">60~90분</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox5">
						        		<label class="custom-control-label" for="checkbox5">90~120분</label>
						      		</div>
						   		 </a>
						   		 <a class="dropdown-item" href="#">
						     		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox6">
						        		<label class="custom-control-label" for="checkbox6">120분 이상</label>
						      		</div>
						   		 </a>
						  	</div>
						  <!-- Basic dropdown -->
						    <button class="btn btn-muted border dropdown-toggle col-9" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">시스템</button>
							<div class="dropdown-menu" id="gameSystem">
								<a >
							     	<input type="checkbox" class="custom-control-input" id="checkbox0">
							       	<label class="custom-control-label" for="checkbox0">전체</label>
							    </a><br>
							    <c:set var="i" value="0"/><c:set var="j" value="12"/>
								<c:forEach items="${systemList}" var="system" varStatus="v">
									<c:if test="${i%j==0 }">
										<span><!-- 왜 nth:child(3)부터 인식될까? -->
									</c:if>	
									<a>
										<input type="checkbox" class="custom-control-input" id="checkbox${system.tagseq }">
										<label class="custom-control-label" for="checkbox${system.tagseq }">${system.tagname }</label>
									</a>
									<c:if test="${!v.last}"> <br> </c:if>
									<c:if test="${i%j==j-1 }">
										</span>
									</c:if>	
									<c:set var="i" value="${i+1 }" />
								</c:forEach>
						  	</div>
						  <!-- Basic dropdown -->
						    <button class="btn btn-muted border dropdown-toggle col-9" type="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임 장르</button>
							<div class="dropdown-menu">
						   		<a class="dropdown-item">
						     	<!-- Default unchecked -->
						      		<div class="custom-control custom-checkbox">
						       			<input type="checkbox" class="custom-control-input" id="checkbox0">
						        		<label class="custom-control-label" for="checkbox0">전체</label>
						      		</div>
						    	</a>
						    	<c:forEach items="${gerneList}" var="gerne">
						    		<a class="dropdown-item" href="#">
						    			<div class="custom-control custom-checkbox">
						    				<input type="checkbox" class="custom-control-input" id="checkbox${gerne.tagseq }">
						      				<label class="custom-control-label" for="checkbox${gerne.tagseq }">${gerne.tagname }</label>
						    			</div>
						    		</a>
						    	</c:forEach>	
						  	</div>
						</div>
					</form>
				</div>
				
				<ul id="products" class="nav my-5 justify-content-center">
					<c:forEach items="${productList }" var="gameVO">
						<li class="border px-1 m-1">
							<div class="thum">
								<a href="gameDetail.do?seq=${gameVO.seq }"><img src="resources/${gameVO.image }" width="235" height="235" class="border-bottom mb-2"></a>
							</div>
							<div id="wrap">
								<div>
									<p><a href="gameDetail.do?seq=${gameVO.seq }">${gameVO.name }</a></p>
								</div>	
								<table class="w-100 my-2">
									<tr>
										<th class="text-start text-secondary"><img src="resources/images/ico_cost.png"> 가격</th>
										<td class="text-end"><fmt:formatNumber type="number" maxFractionDigits="3" value="${gameVO.salesprice}" />원</td>
									</tr>	
									<tr>
										<th class="text-start text-secondary"><img src="resources/images/best_icon01.png" width="45px"> 게임인원</th>
										<td class="text-end">${gameVO.minplayer }명~${gameVO.maxplayer }명</td>
									</tr>
									<tr>
										<th class="text-start text-secondary"><img src="resources/images/best_icon02.png" width="45px"> 게임시간</th>
										<td class="text-end">${gameVO.playtime }분</td>
									</tr>
								</table>
							</div>
						</li>
					</c:forEach>	
				</ul>
				
				<!-- 페이징 -->
				<div id="paginate" class="mb-5 nav justify-content-center">
					${pageBar }
				</div>
				
			</div>
				
		</div>	
		
	</article>	










<%@ include file="../footer.jsp" %>