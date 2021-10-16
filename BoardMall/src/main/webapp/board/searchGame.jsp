<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
	#wrap{
		width: 500px;
		height: 600px;
		border: 1px solid black;
	}
	
	.bg-dark {
		height:50px;
	}
	
	.text-light {
		line-height:45px;
		margin-left:15px;
	}
	
	#search{
		margin: 20px;
		text-align: center;
	}
	
	#search #searchResult{
		height: 400px;
		background-color: #e1e1df;
		padding:20px;
		overflow: auto;
		border:1px solid #e1e1df;
	}
	
	table {
		background-color: white;
		width: 100%;
		text-align: center;
		overflow:hidden;
	}
	
	table, tr, td{
		border: 1px solid #c3c3c0;
	}
	
 	table tr td:first-child {
		width:25%;
		height:75px;
	}
	
	#gameTitle{
		height:70px;
		overflow:hidden;
	}
	
	#footer {
		margin-top:10px;
	}
</style>
</head>
<body>
<!-- window.open(url, "_blanck1_", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=800"); 
		js function으로 새창 띄움. 추후 사이즈 조절 -->
	<div id="wrap">
		<div class="bg-dark">
			<h3 class="text-light">게임 검색하기</h3>
		</div>	
		<div id="search">
			<input type="text" placeholder="예) 루미큐브" size="40">
			<button type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
				</svg>
			</button>
			<p><span class="fw-bold fs-4">tip</span> 게임 이름을 검색하세요.</p>
			
			<!-- 게임 검색 결과가 이 영역에 뜸 -->
			<div id="searchResult">
				<!-- 검색결과 -->
				<table>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> <div id="gameTitle">세상에서 제일 재미있는 게임 게임이다게임이야 가나다라마바사아자착카타파하 재밌다고 사라고사사사사사아아아사ㅏ아상</div></td>
					</tr>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> 게임 이름</td>
					</tr>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> 게임 이름</td>
					</tr>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> 게임 이름</td>
					</tr>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> 게임 이름</td>
					</tr>
					<tr>
						<td><img src="resources/images/LOGO.png" width="70" height="70"></td>
						<td> 게임 이름</td>
					</tr>
				</table>
			</div>
		
			<!-- footer -->
			<p id="footer"> Copyright © 2021 BoardMall. All Rights Reserved</p>
		</div>
	</div>
</body>
</html>