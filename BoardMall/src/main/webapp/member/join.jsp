<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- 회원가입 화면 -->
<div class="container">
	<div class="py-3 text-center">
	<img class="d-block mx-auto mb-4" src="resources/images/LOGO.png" alt="Logo" width="250" height="150">
		<h2>회원가입</h2>
	</div>
	
	<div class="row" style="float: none;margin:0 auto;width: 700px;">
		<!-- <div class="col-md-8 order-md-1"> -->
		<div class="col-md-12">
			<form class="needs-validation bg-light text-dark" style="padding:15px;" novalidate>
				<h5 class="mb-3">기본 정보 입력(필수)</h5>
				<br>
				<div class="mb-3">
					<label for="userId">아이디</label>
					<div class="input-group">
						<input type="text" class="form-control" id="userId"
							placeholder="아이디" required>
						<button class="btn btn-primary btn-lg btn-block" type="button" onclick="#">중복확인</button>
						<div class="invalid-feedback" style="width: 100%;">
						아이디를 입력하세요.</div>
					</div>
				</div>
				<div class="mb-3">
					<label for="userPwd">비밀번호 </label>
					<input type="password" class="form-control" id="userPwd"
						placeholder="비밀번호">
					<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
				</div>
				<div class="mb-3">
					<label for="userPwdChk">비밀번호 확인 </label>
					<input type="password" class="form-control" id="userPwdChk"
						placeholder="비밀번호 확인">
					<div class="invalid-feedback">비밀번호가 일치하지 않습니다.</div>
				</div>
				<div class="mb-3">
					<label for="userName">이름 </label>
					<input type="text" class="form-control" id="userName"
						placeholder="이름">
					<div class="invalid-feedback">이름을 입력해주세요.</div>
				</div>
				<div class="mb-3">
					<label for="email">이메일 </label>
					<input type="email" class="form-control" id="email"
						placeholder="you@example.com">
					<div class="invalid-feedback">올바른 이메일 주소를 입력하세요.</div>
				</div>
				<div class="mb-3">
					<label for="userNickname">닉네임</label>
					<div class="input-group">
						<input type="text" class="form-control" id="userNickname"
							placeholder="닉네임" required>
						<button class="btn btn-primary btn-lg btn-block" type="button" onclick="#">중복확인</button>
						<div class="invalid-feedback" style="width: 100%;">
						닉네임을 입력하세요.</div>
					</div>
				</div>
				<hr class="mb-4">
				<h5 class="mb-3">선택 입력 사항</h5><br>
				<div class="mb-3">
					<label for="userPhone">휴대폰 번호</label>
					<input type="tel" class="form-control" id="userPhone"
						placeholder="휴대폰 번호">
				</div>
				<div class="mb-3">
					<label for="Zipnum">우편번호</label>
					<div class="input-group">
						<input type="number" class="form-control" id="Zipnum"
							placeholder="우편번호" required>
						<button class="btn btn-primary btn-lg btn-block" type="button" onclick="#">우편번호 검색</button>
					</div>
				</div>
				<div class="mb-3">
					<label for="address">기본 주소</label> <input type="text"
						class="form-control" id="address" placeholder="기본 주소"
						required>
				</div>

				<div class="mb-3">
					<label for="address2">상세 주소<span class="text-muted">(선택 사항)</span></label>
					<input type="text" class="form-control" id="address2"
						placeholder="상세 주소">
				</div>
				
			</form>
			<div class="mb-3 text-center">
				<button class="btn btn-primary btn-lg btn-block"  style="reset">취소</button>
				<button class="btn btn-primary btn-lg btn-block" type="submit">확인</button>
			</div>
		</div>
	</div>

	<footer class="my-5 pt-5 text-muted text-center text-small">
		<p class="mb-1">&copy; 2017-2018 Company Name</p>
		<ul class="list-inline">
			<li class="list-inline-item"><a href="#">Privacy</a></li>
			<li class="list-inline-item"><a href="#">Terms</a></li>
			<li class="list-inline-item"><a href="#">Support</a></li>
		</ul>
	</footer>
</div>

<%@ include file="../footer.jsp"%>