<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<!-- 회원정보 수정 화면 구성 -->

<section style="height:80px;">
</section>

  <div class="container">
  	<div class="py-3 text-center">
		<h2>회원정보 수정</h2>
	</div>
	
	<div class="row" style="float: none;margin:0 auto;width: 700px;">
		<div class="col-md-12">
			<form class="needs-validation bg-light text-dark" style="padding:15px;" novalidate>
				<br>
				<div class="mb-3">
					<label for="userId">아이디</label>
					<div class="input-group">
						<input type="text" class="form-control" id="userId"
							placeholder="아이디" required>
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
					<label for="userPhone">프로필 사진</label>
					<input type="file" class="form-control" id="profile">
				</div>
				<div class="mb-3">
					<label for="userNickname">닉네임</label>
					<div class="input-group">
						<input type="text" class="form-control" id="userNickname"
							placeholder="닉네임" required>
						<div class="invalid-feedback" style="width: 100%;">
						닉네임을 입력하세요.</div>
					</div>
				</div>
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
			<div class="mt-5 text-center">
				<button class="btn btn-primary btn-lg btn-block"  style="reset">수정하기</button>
			</div>
		</div>
	</div>
  
  
  
  </div>




<section style="height:150px;">
	
</section>


<%@ include file="../footer.jsp" %>