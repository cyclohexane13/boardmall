<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 문제 영역 -->
	<section style="height:800px;">
		<div style="border: 2px solid black;border-radius: 4px;width: 600px;margin: 0 auto; height: 500px; padding: 20px;" id="testWrap">
			<div style="border: 1px solid #DDDDDD;border-radius: 4px" >
				<form action="" name="radios" id="testForm">
					<div class="question">
					1번<br>
					
						<input type="radio" name="q1" id="q1-1" value="1">
						<input type="radio" name="q1" id="q1-2" value="2">
						<label for="q1-1">1번</label><br>
						<label for="q1-2">2번</label><br>
						<br><br>
					</div>
					<div class="d-none question">
					2번<br>
						<input type="radio" name="q2" id="q2-1" value="1">
						<input type="radio" name="q2" id="q2-2" value="2">
						<label for="q2-1">1번</label><br>
						<label for="q2-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					3번<br>
						<input type="radio" name="q3" id="q3-1" value="1">
						<input type="radio" name="q3" id="q3-2" value="2">
						<label for="q3-1">1번</label><br>
						<label for="q3-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					4번<br>
						<input type="radio" name="q4" id="q4-1" value="1">
						<input type="radio" name="q4" id="q4-2" value="2">
						<label for="q4-1">1번</label><br>
						<label for="q4-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					5번<br>
						<input type="radio" name="q5" id="q5-1" value="1">
						<input type="radio" name="q5" id="q5-2" value="2">
						<label for="q5-1">1번</label><br>
						<label for="q5-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					6번<br>
						<input type="radio" name="q6" id="q6-1" value="1">
						<input type="radio" name="q6" id="q6-2" value="2">
						<label for="q6-1">1번</label><br>
						<label for="q6-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					7번<br>
						<input type="radio" name="q7" id="q7-1" value="1">
						<input type="radio" name="q7" id="q7-2" value="2">
						<label for="q7-1">1번</label><br>
						<label for="q7-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					8번<br>
						<input type="radio" name="q8" id="q8-1" value="1">
						<input type="radio" name="q8" id="q8-2" value="2">
						<label for="q8-1">1번</label><br>
						<label for="q8-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					9번<br>	
						<input type="radio" name="q9" id="q9-1" value="1">
						<input type="radio" name="q9" id="q9-2" value="2">
						<label for="q9-1">1번</label><br>
						<label for="q9-2">1번</label><br>
						
						<br><br>
					</div>	
					<div class="d-none question">
					10번	<br>
						<input type="radio" name="q10" id="q10-1" value="1">
						<input type="radio" name="q10" id="q10-2" value="2">
						<label for="q10-1">1번</label><br>
						<label for="q10-2">1번</label><br>
						
						<br><br>
					</div>
					<div class="d-none question">	
						문제를다풀었네요<br>
						<p onclick="testCheck()">결과 확인하기</p>
					</div>
					<br>
					<div class="d-none" id="prevButton" style="width: 30px; float: left;">
						<button>&lt; </button>
					</div>
						
					<div class="" id="nextButton" style="width: 30px; float: right;">
						<button>&gt; </button>
					</div>
				</form>
			</div>
		
		
		
		</div>
	</section>



<%@ include file="../footer.jsp" %>