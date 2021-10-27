/**
 * 
 */

 
$(document).ready(function(){
	var $testIdx = 0;
	$('#testForm input[type="radio"]').click(function(){
		$(this).closest('div').addClass("d-none");
		$(this).closest('div').next().removeClass("d-none");
		$('#prevButton').removeClass("d-none");
		$testIdx++;
	});
	
	$('#prevButton button').click(function(e){
		e.preventDefault();
		$('#testForm .question').eq($testIdx).addClass("d-none");
		$testIdx--;
		$('#testForm .question').eq($testIdx).removeClass("d-none");
		if($testIdx<1){
			$('#prevButton').addClass("d-none");
		}
		if($testIdx<=9){
			$('#nextButton').removeClass("d-none");
		}
	});
	
	$('#nextButton button').click(function(e){
		e.preventDefault();
		$('#testForm .question').eq($testIdx).addClass("d-none");
		$testIdx++;
		$('#testForm .question').eq($testIdx).removeClass("d-none");
		if($testIdx>9){
			$('#nextButton').addClass("d-none");
		}
		if($testIdx>=1){
			$('#prevButton').removeClass("d-none");
		}
	});
});

function testCheck(){
	var $radios = $('#testForm input[type="radio"]:checked');
	
	if($radios.length<10){
		alert('모든 항목에 체크해야 합니다.');
		return;
	}else{
		$.each($radios,function(index,item){
			console.log(item.value);
			
		})
	}
	var testData = $('#testForm').serialize();
	$.ajax({
		type:"post",
		url:"test.do",
		data:testData,
		success:function(res){
			$("#testWrap").html(res);
		}
	})
	
}
	
