package com.boardmall.pro.dto;

public class OrderDetailVO {
	private int seq, orderseq, gameseq, quantity;
	private String result;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getOrderseq() {
		return orderseq;
	}
	public void setOrderseq(int orderseq) {
		this.orderseq = orderseq;
	}
	public int getGameseq() {
		return gameseq;
	}
	public void setGameseq(int gameseq) {
		this.gameseq = gameseq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
