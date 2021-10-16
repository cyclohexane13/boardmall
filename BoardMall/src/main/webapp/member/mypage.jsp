<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<!-- 서브메뉴 구성 -->





<!-- 마이페이지 화면 구성 -->
<div class="container">

<nav class="mr-4 list-group-flush" id="sub_menu">
	<h2>마이페이지</h2>
  <ul class = "menu">
    <li style="font-size: 18px; font-weight: bold;">상품주문관리</li>  
    <li><a href="#">주문내역</a></li>  
    <li><a href="#">장바구니</a></li> 
    <li><a href="#">위시리스트</a></li> 
    <li style="font-size: 18px; font-weight: bold;">활동 관리</li>  
    <li><a href="#">내가 쓴 글 보기</a></li>  
    <li><a href="#">1:1 문의</a></li>  
    <li><a href="#">나의 상품 후기</a></li>  
    <li style="font-size: 18px; font-weight: bold;">정보관리</li>  
    <li><a href="#">내 정보 수정</a></li>  
    <li><a href="#">회원 탈퇴</a>
    </li>  
  </ul>
</nav>

<div class="py-3">
	
	<div class="row" style="float: none;margin:0 auto;width: 900px; height : 250px; margin-top: 100px;">
		<div class="bg-light text-dark" style="float : left; width:100%; height:100%;">
			<!-- 프로필 사진과 옆 텍스트 묶음 -->
			<div style=" width: 500px;">
			<img src="../resources/images/LOGO.png" width="100" height="100" style="position:relative; top: 70px; left: 20px;">
			
				<div style="position : relative; left : 150px; bottom: 20px;">
					<p style="font-size: 30px;">OOO님 반갑습니다.</p>
					<p>현재 등급은 OO입니다.</p>
				</div>
			</div>
			
			<!-- 적립금과 위시리스트 텍스트 -->
			<div style="float: right; width: 300px; position:relative; bottom: 130px;">
			<table class="text-center" cellpadding="10" cellspacing="5">
				<tr>
					<th style="font-size: 20px;">적립금</th>
					<th style="font-size: 20px;">위시리스트</th>
				</tr>
				<tr>
					<td style="font-size: 34px;">0원</td>
					<td style="font-size: 34px;">0개</td>
				</tr>
			</table>
			
			</div>
			
		</div>
	</div>
	
	
	<div class="row" style="margin:0 auto;width: 900px; height : 250px; margin-top: 50px;">
		<div>
			<p style="font-size: 30px; font-weight: bold; font-family: 'notokr-medium','돋움',Dotum,sans-serif;">최근 주문 내역</p>
			<hr>
		</div>
		<ul class="nav col-12 mb-3 mt-3 mb-md-0" id="order_history">
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 190px; height: 190px; background-size: 190px 190px;">
				</div>
				<p>주문내역1</p>
			</li>
			
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 190px; height: 190px; background-size: 190px 190px;">
				</div>
				<p>주문내역2</p>
			</li>
			
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 190px; height: 190px; background-size: 190px 190px;">
				</div>
				<p>주문내역3</p>
			</li>
			
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 190px; height: 190px; background-size: 190px 190px;">
				</div>
				<p>주문내역4</p>
			</li>
			
		</ul>
	</div>
	
	<div class="row" style="margin:0 auto;width: 900px; height : 250px; margin-top: 150px;">
		<p style="font-size: 30px; font-weight: bold; font-family: 'notokr-medium','돋움',Dotum,sans-serif;">위시리스트</p>
		<hr>
		<ul class="nav col-12 mb-3 mt-5 mb-md-0">
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 250px; height: 250px; background-size: 190px 190px;">
				</div>
				<p>상품정보1</p>
			</li>
			
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 250px; height: 250px; background-size: 190px 190px;">
				</div>
				<p>상품정보2</p>
			</li>
			
			<li class="text-center float-left m-3" onclick="location.href='#'" style="cursor: pointer;" >
				<div class="border" style="background-image: url('../resources/images/LOGO.png'); width: 250px; height: 250px; background-size: 190px 190px;">
				</div>
				<p>상품정보3</p>
			</li>
			
			
		</ul>
	</div>
	
</div>

</div>




<section style="height:250px;">
	
</section>

<style>
nav{
	width : 180px;
	position : fixed;
	margin-top : 100px;
	margin-right : 30px;
}

nav ul{
	list-style: none;
}

nav#sub_menu ul a {
	text-decoration : none;
}

	h1{
	font-size : 25px;
	padding : 5px;
}

.menu li a{
	height : 30px;
	line-height : 20px;
	display : block;
	padding : 0 20px;
	font-size : 15px;
	color : black;
}

.menu li {
	margin-bottom : 10px;
	border-bottom : 1px solid #efefef;
}

.menu li a:hover{
	background-color : gray;
	color : white;
}


</style>


<%@ include file="../footer.jsp" %>	