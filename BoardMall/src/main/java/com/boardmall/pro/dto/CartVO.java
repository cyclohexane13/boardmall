package com.boardmall.pro.dto;

import java.util.Date;

public class CartVO {
	private int seq, gameseq, quantity;
	private String userid;
	private Date indate;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
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
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	
}
