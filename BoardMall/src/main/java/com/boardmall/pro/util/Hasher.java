package com.boardmall.pro.util;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Hasher {
	private Hasher() {
		
	}
	private static Hasher instance = new Hasher();
	
	public static Hasher getInstance() {
		return instance;
	}
	
	
	public String hasing(String src) throws NoSuchAlgorithmException {
		  MessageDigest md = MessageDigest.getInstance("SHA-256");
		  md.update(src.getBytes());
		  StringBuilder sb = new StringBuilder();
		  for(byte b : md.digest()){
		    // 바이트를 2자리의 16진수로 바꾸는데, 남는자리가 생긴다면 0을 추가한다
		    sb.append(String.format("%02x", b));
		  }

		  return sb.toString();
		}
}
