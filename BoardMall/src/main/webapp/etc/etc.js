/**
 * 
 */

 
$(document).ready(function(){
	var $testIdx = 0;
	$('#gameTestForm input[type="radio"]').click(function(){
		$(this).closest('div').addClass("d-none");
		$(this).closest('div').next().removeClass("d-none");
		$('#prevButton').removeClass("d-none");
		$testIdx++;
		if($testIdx>9){
			$('#nextButton').addClass("d-none");
		}
		var $checked = $('#gameTestForm input[type="radio"]:checked');
		var $checkedCnt = $checked.length;
		console.log($checkedCnt);
		$('#progressIn').css({"width":$checkedCnt*10+'%'});
	});
	
	$('#prevButton button').click(function(e){
		e.preventDefault();
		$('#gameTestForm .question').eq($testIdx).addClass("d-none");
		$testIdx--;
		$('#gameTestForm .question').eq($testIdx).removeClass("d-none");
		if($testIdx<1){
			$('#prevButton').addClass("d-none");
		}
		if($testIdx<=9){
			$('#nextButton').removeClass("d-none");
		}
	});
	
	$('#nextButton button').click(function(e){
		e.preventDefault();
		$('#gameTestForm .question').eq($testIdx).addClass("d-none");
		$testIdx++;
		$('#gameTestForm .question').eq($testIdx).removeClass("d-none");
		if($testIdx>9){
			$('#nextButton').addClass("d-none");
		}
		if($testIdx>=1){
			$('#prevButton').removeClass("d-none");
		}
	});
});

function gameTestCheck(){
	var $radios = $('#gameTestForm input[type="radio"]:checked');
	
	if($radios.length<10){
		alert('모든 항목에 체크해야 합니다.');
		return;
	}else{
		$.each($radios,function(index,item){
			console.log(item.value);
			
		})
	}
	var gameTestData = $('#gameTestForm').serialize();
	$.ajax({
		type:"post",
		url:"gameTest.do",
		data:gameTestData,
		success:function(res){
			$("#gameTestWrap").html(res);
		}
	})
	
}
	
