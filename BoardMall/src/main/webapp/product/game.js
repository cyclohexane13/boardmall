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


