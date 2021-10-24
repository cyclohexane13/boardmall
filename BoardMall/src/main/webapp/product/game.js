var sellPrice;
var amount;

function init() {
	sellPrice = document.formAmount.sellPrice.value;
	amount = document.formAmount.amount.value;
	document.formAmount.sum.value = sellPrice;
	change();
}

function add() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	hm.value++;
	sum.value = parseInt(hm.value)*sellPrice;
}

function del() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	if(hm.value > 1){
		hm.value--;
		sum.value = parseInt(hm.value)*sellPrice;
	}
}

function change() {
	hm = document.formAmount.amount;
	sum = document.formAmount.sum;
	if(hm.value <= 0){
		hm.value = 1;
	}
	sum.value = parseInt(hm.value)*sellPrice;
}