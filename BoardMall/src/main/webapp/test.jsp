<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

 
				<ul id="products" class="nav my-5 justify-content-center">
					<c:forEach items="${gameTagList }" var="gameVO">
						<li class="border px-1 m-1">
							<div class="thum">
								<a href="gameDetail.do?seq=${gameVO.seq }"><img src="resources/${gameVO.image }" width="235" height="350" class="border-bottom mb-2"></a>
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
				