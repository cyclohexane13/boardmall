package com.boardmall.pro.dto;

public class GameVO {
	private int seq, costprice, salesprice, profit, discount, stock, minplayer, maxplayer, playtime;
	private String name, image, content , searchTitle;
	public int getSeq() {
		return seq;
	}
	public String getSearchTitle() {
		return searchTitle;
	}
	public void setSearchTitle(String searchTitle) {
		this.searchTitle = searchTitle;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getCostprice() {
		return costprice;
	}
	public void setCostprice(int costprice) {
		this.costprice = costprice;
	}
	public int getSalesprice() {
		return salesprice;
	}
	public void setSalesprice(int salesprice) {
		this.salesprice = salesprice;
	}
	public int getProfit() {
		return profit;
	}
	public void setProfit(int profit) {
		this.profit = profit;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getMinplayer() {
		return minplayer;
	}
	public void setMinplayer(int minplayer) {
		this.minplayer = minplayer;
	}
	public int getMaxplayer() {
		return maxplayer;
	}
	public void setMaxplayer(int maxplayer) {
		this.maxplayer = maxplayer;
	}
	public int getPlaytime() {
		return playtime;
	}
	public void setPlaytime(int playtime) {
		this.playtime = playtime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
