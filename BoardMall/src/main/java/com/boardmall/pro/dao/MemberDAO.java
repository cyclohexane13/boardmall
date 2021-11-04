package com.boardmall.pro.dao;

import org.apache.ibatis.session.SqlSession;

import com.boardmall.pro.dto.MemberVO;
import com.boardmall.pro.util.SqlSessionFactoryBean;

public class MemberDAO {
	
	private SqlSession mybatis;
	
	public MemberDAO() {
		mybatis  = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	//회원가입
	public void register(MemberVO vo) {
		mybatis.insert("MemberDAO.register",vo);
	}
	//아이디중복확인
	public int idChk(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.idChk",vo);
		return result;
	}
	//닉네임중복확인
	public int nicknameChk(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.nicknameChk",vo);
		return result;
	}
	//로그인
	public int Login(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.Login",vo);
		System.out.println("MemberDAO값 :" + result);
		return result;
	}
}
