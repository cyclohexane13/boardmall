<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>


<!-- 회원가입 화면 -->
	<article class="container">
		<div class="py-3 text-center">
			<h3>회원가입(약관동의)</h3>
		</div>
		<form id="join" method="post" name="formm">
		<div class="py-3 text-center">
			BoardMall 사이버몰의 서비스를 이용하기 위해 이용자는 이용 약관을 읽어보시고 동의하셔야 합니다.<br>
			회원가입은 무료이며, 가입 즉시 서비스를 이용하실 수 있습니다. 아래의 이용 약관을 반드시 읽고 동의해 주십시오.<br><br>
		</div>
		<hr class="mb-4">
		<h5 class="mb-3" style="font-weight: bold;">이용약관</h5>
		<textarea rows="10" cols="120" class="bg-light text-dark">
			<%@ include file="contract_1.jsp" %>
		</textarea>
		<br><input type="checkbox" name="agree"> (필수) 위의 "이용약관"에 동의 합니다.
			<br><br><br>
			
<h5 class="mb-3" style="font-weight: bold;">개인정보수집 및 활용에 대한 동의</h5>
		<textarea rows="10" cols="120" class="bg-light text-dark">
			<%@ include file="contract_2.jsp" %>
		</textarea>
		<br><input type="checkbox" name="agree">  (필수) 위의 "개인정보 수집이용"에 동의 합니다.
			<br><br>
		<div class="mb-3 text-center">
				<button class="btn btn-primary btn-lg btn-block" type="submit" onclick="go_next()">다음</button>
			</div>
		</form>
	</article>
<script>
function go_next() {
	if (document.formm.agree1.checked == true) {
	} else if (document.formm.agree1.checked == false) {
		alert('약관에 동의하셔야 합니다.');
	}
	if (document.formm.agree2.checked == true) {
		document.formm.action = "join.jsp";
		document.formm.submit();
	} else if (document.formm.agree2.checked == false) {
		alert('약관에 동의하셔야 합니다.');
	}
}
</script>

<%@ include file="../footer.jsp"%>