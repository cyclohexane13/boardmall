package com.boardmall.pro.dto;

public class RatingVO {
	private int seq, gameseq, rating;
	private String userid;
	
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
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
