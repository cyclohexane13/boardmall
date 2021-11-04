<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<!-- 문제 영역 -->

	<h2 style="text-align: center;">당신을 위한 게임 추천</h2>
<br>
	<section style="height:800px;">
		<div style="border: 2px solid black;border-radius: 4px;width: 800px;margin: 0 auto; height: 500px; padding: 20px;" id="gameTestWrap">
			<div style="border: 1px solid #DDDDDD;border-radius: 4px;padding: 15px; height: 80%" >
				<form action="" name="radios" id="gameTestForm">
					<div class="question">
						<div class="ques">
							Q1. 당신은 트럭에 치여 이세계로 가게 되었습니다. 이세계에서 활약할 당신의 직업군을 선택하세요<br><br>
						</div>
						<input type="radio" name="q1" id="q1-1" value="1">
						<label for="q1-1">적과 직접 전투하여 승리를 쟁취하는 전투계열 직업군</label>
						
						<br>
						<input type="radio" name="q1" id="q1-2" value="2">
						<label for="q1-2">아군을 지원하여 전투를 승리로 이끄는 지원계열 직업군</label>
						
						<br>
						<br><br>
					</div>
					<div class="d-none question">
						<div class="ques">
							Q2. 모험을 떠나기로 한 당신의 파티는 다음 마을로 이동하기 위해 길을 가던 중 갈림길 앞에 섰습니다.<br><br>
						</div>
						<input type="radio" name="q2" id="q2-1" value="1">
						<label for="q2-1">돌아가지만 평평하게 닦인 길로 간다.</label>
						
						<br>
						<input type="radio" name="q2" id="q2-2" value="2">
						<label for="q2-2">직선거리로 가장 가깝지만 험한 길로 간다.</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q3. 방금 선택한 길을 가던 중에 늑대 무리를 만났습니다!<br><br>
						</div>
						<input type="radio" name="q3" id="q3-1" value="1">
						<label for="q3-1">싸운다</label>
						
						<br>
						<input type="radio" name="q3" id="q3-2" value="2">
						<label for="q3-2">길들인다</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q4. 마을에 도착한 당신의 파티가 가장 먼저 할 일은?<br><br>
						</div>
						<input type="radio" name="q4" id="q4-1" value="1">
						<label for="q4-1">여관에 가서 휴식을 취한다.</label>
						
						<br>
						<input type="radio" name="q4" id="q4-2" value="2">
						<label for="q4-2">장에 나가 마을 사람들을 만나본다.</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q5. 당신의 파티가 마을에서 시작할 퀘스트는 어떤 퀘스트입니까?<br><br>
						</div>
						<input type="radio" name="q5" id="q5-1" value="1">
						<label for="q5-1">마을 주민들의 작업을 도와주는 생활 퀘스트</label>
						
						<br>
						<input type="radio" name="q5" id="q5-2" value="2">
						<label for="q5-2">마을 주민들의 안전을 위한 주변 몬스터 토벌 퀘스트</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q6. 당신의 파티는 퀘스트의 보상으로 마을의 성직자에게 작은 축복을 받기로 했습니다. 어떤 축복을 받겠습니까?<br><br>
						</div>
						<input type="radio" name="q6" id="q6-1" value="1">
						<label for="q6-1">파티원의 능력치를 상승시키는 영광의 축복</label>
						
						<br>
						<input type="radio" name="q6" id="q6-2" value="2">
						<label for="q6-2">파티원의 행운을 상승시키는 신성한 빛</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q7. 어느 날 당신은 상위 랭크의 다른 파티로 이적할 것을 제안받았습니다. 어떻게 하시겠습니까?<br><br>
						</div>
						<input type="radio" name="q7" id="q7-1" value="1">
						<label for="q7-1">이적 후 새로운 파티에서 새로운 삶을 시작한다. </label>
						
						<br>
						<input type="radio" name="q7" id="q7-2" value="2">
						<label for="q7-2">이적하지 않고 우리 파티원을 랭크업 시키기 위해 노력한다.</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q8. 치열하게 이세계에서 살아온 당신에게 그 다음 삶이 주어진다면?<br><br>
						</div>
						<input type="radio" name="q8" id="q8-1" value="1">
						<label for="q8-1">지금까지 살아왔던 직업군을 다시 해본다. </label>
						
						<br>
						<input type="radio" name="q8" id="q8-2" value="2">
						<label for="q8-2">새로운 도전을 위해 새로운 직업군에 도전한다.</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q9. 모험가를 은퇴한 당신의 삶의 끝에 보이는 것은 무엇입니까?<br><br>
						</div>
						<input type="radio" name="q9" id="q9-1" value="1">
						<label for="q9-1">대륙의 절반 이상에 해당하는 광대한 영토와 막대한 재산.</label>
						
						<br>
						<input type="radio" name="q9" id="q9-2" value="2">
						<label for="q9-2">이상형인 배우자와 함께 하는 일상.</label>
						
						<br>
						
						<br><br>
					</div>	
					<div class="d-none question">
						<div class="ques">
							Q10. 당신은 어느 바닷가를 따라 걷고 있었습니다. 떨어져 있는 물건 중에 하나를 줍는다면 어떤 것을 줍겠습니까?<br><br>
						</div>
						<input type="radio" name="q10" id="q10-1" value="1">
						<label for="q10-1">어디서 떠밀려왔는지 모를 나뭇가지</label>
						<br>
						<input type="radio" name="q10" id="q10-2" value="2">
						<label for="q10-2">바닥에 있는 이가 좀 나간 조개껍데기</label>
						
						<br>
						
						<br><br>
					</div>
					<div class="d-none question">	
						문제를다풀었네요<br>
						<p onclick="gameTestCheck()">결과 확인하기</p>
					</div>
					<br>
					<div id="progress">
						<div id="progressIn"></div>
					</div>
				</form>
					
			</div>
				<div class="d-none" id="prevButton" style="float: left;">
					<button>&lt; </button>
				</div>
					
				<div class="" id="nextButton" style="float: right;">
					<button>&gt; </button>
				</div>
		
		
		</div>
	</section>



<%@ include file="../footer.jsp" %>