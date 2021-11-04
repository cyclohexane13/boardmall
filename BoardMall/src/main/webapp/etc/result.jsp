<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="text-align: center;">

	<h2>당신을 위한 추천 게임</h2>
	<br>
	<div class="d-flex">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
				<div class="hovereffect border border-2" style="height: 300px;">
					<a href="gameDetail.do?seq=${game1.seq }"> <img class="img-responsive w-100 h-100"
						src="resources/${game1.image }" alt="Game1">
						<div class="overlay">
							<h2 class="fw-bold">${game1.name }</h2>
							<!-- <a class="info" href="#">link here</a> -->
							<table class="w-100 h-75 text-white py-2">
								<tr class="my-3">
									<th class="text-start ps-3"><img
										src="resources/images/ico_cost.png"></th>
									<td class="text-end pe-3">${game1.salesprice }</td>
								</tr>
								<tr class="my-3">
									<th class="text-start ps-3"><img
										src="resources/images/best_icon01.png" width="20px"></th>
									<td class="text-end pe-3">${game1.minplayer }명~${game1.maxplayer }명</td>
								</tr>
								<tr class="my-3">
									<th class="text-star ps-3"><img
										src="resources/images/best_icon02.png" width="20px"></th>
									<td class="text-end pe-3">${game1.playtime }</td>
								</tr>
							</table>
						</div>
					</a>
				</div>
				<h3>${game1.name }</h3>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 ">
						<div class="hovereffect border border-2" style="height: 300px;">
							<a href="gameDetail.do?seq=${game2.seq }"> <img class="img-responsive w-100 h-100"
								src="resources/${game2.image }" alt="Game1">
								<div class="overlay">
									<h2 class="fw-bold">${game2.name }</h2>
									<!-- <a class="info" href="#">link here</a> -->
									<table class="w-100 h-75 text-white py-2">
										<tr class="my-3">
											<th class="text-start ps-3"><img
												src="resources/images/ico_cost.png"></th>
											<td class="text-end pe-3">${game2.salesprice }</td>
										</tr>
										<tr class="my-3">
											<th class="text-start ps-3"><img
												src="resources/images/best_icon01.png" width="20px"></th>
											<td class="text-end pe-3">${game2.minplayer }명~${game2.maxplayer }명</td>
										</tr>
										<tr class="my-3">
											<th class="text-star ps-3"><img
												src="resources/images/best_icon02.png" width="20px"></th>
											<td class="text-end pe-3">${game2.playtime }</td>
										</tr>
									</table>
								</div>
								
							</a>
						</div>
						<h3>${game2.name }</h3>
					</div>
	</div>