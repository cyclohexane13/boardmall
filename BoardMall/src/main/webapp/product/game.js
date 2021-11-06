var sellPrice;
var amount;


function init() {
	sellPrice = document.formAmount.sellPrice.value;
	amount = document.formAmount.amount.value;
	document.formAmount.sum.value = Number(sellPrice).toLocaleString();
	change();
}

function add() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	hm.value++;
	sum.value = Number(parseInt(hm.value)*sellPrice).toLocaleString();
}

function del() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	if(hm.value > 1){
		hm.value--;
		sum.value = Number(parseInt(hm.value)*sellPrice).toLocaleString();
	}
}

function change() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	if(hm.value <= 0){
		hm.value = 1;
	}
	sum.value = Number(parseInt(hm.value)*sellPrice).toLocaleString();
}


/* checkbox */
function checkSelectAll(checkbox,s) {
	const selectAll = document.querySelector("input[value=" + s + "]");
	
	if(checkbox.checked === false){
		selectAll.checked = false;
	}
}

function selectAll(selectAll,check){
	const checkboxes = document.getElementsByName(check);

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked;
	});
	
}

//값 넘기기
function searchOptions(){
	var tagArray = $("#searchGame").serialize();
	console.log(tagArray);
	$.ajax({
		type:"post",
		url:"test.do",
		data:tagArray,
		success: function(res){
			$("#productsPaging").html(res);

		}
	});
}


function searchOptionPaging(pageNo){
	var tagArray = $("#searchGame").serialize();
	var cPage = pageNo;
	console.log(tagArray + " " + cPage);
	$.ajax({
		type:"post",
		url:"test.do?cPage=" + cPage,
		data:tagArray,
		success: function(res){
			$("#productsPaging").html(res);

		}
	});
}