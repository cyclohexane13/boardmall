<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html style="overflow-y: scroll; min-height: 100%;">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/css.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body style="height:100%;">
	<div id="wrap"> <!-- body 전체 wrap -->
		<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between pb-3 mb-4 border-bottom">
			<p style="margin: 10px 0 0 80px;">
				<a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-black text-decoration-none">
		      		<img src="resources/images/LOGO.png" width="180" height="80" alt="BoardMall">
		  		</a>
		  	</p>	
		
		    <ul class="nav col-12 col-md-5 mb-2 justify-content-center mb-md-0">
				<li><a href="#" class="nav-link px-2 link-dark"> 상품 </a></li>
				<li><a href="#" class="nav-link px-2 link-dark"> 커뮤니티 </a></li>
				<li><a href="#" class="nav-link px-2 link-dark"> 공지사항 </a></li>
				<li><a href="#" class="nav-link px-2 link-dark"> 고객지원 </a></li>
				<li><a href="#" class="nav-link px-2 link-dark"> 기타 </a></li>
			</ul>
		
		    <!-- <form class="col-12 col-lg-2 mb-3 mb-lg-0 me-lg-3"> -->
		    <div class="inner-form row">
				<div class="input-field first-wrap col-10">
			    	<input type="search" class="form-control form-control-dark" placeholder="Search..." aria-label="Search">
			    </div>
			    <div class="input-field second-wrap col-2">	
			    	<button type="button" class="btn btn-secondary">
		                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						</svg>
	             	 </button>
	             </div>
	         </div>     
		    <!-- </form> -->
		
		    <div class="text-end col-md-3 col-lg-2 col-sm-3" style="float:right;">
		    	<!-- 프로필 아이콘 -->
		        <button type="button" class="btn btn-outline-primary me-2">
		        	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
						<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
						<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
					</svg>
		        </button>
		        <!-- 장바구니 아이콘 --> 
		        <button type="button" class="btn btn-outline-primary me-2">
		          	<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-cart2" viewBox="0 0 16 16">
						<path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
					</svg>
		        </button>
		      </div>

			<div class="clear"></div> 
			<hr>
		</header>