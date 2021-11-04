package com.boardmall.pro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.boardmall.pro.dto.QnaVO;
import com.boardmall.pro.util.SqlSessionFactoryBean;

public class SupportDAO {
	
	private SqlSession mybatis;
	
	public SupportDAO() {
		mybatis  = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public List<QnaVO> getQnaList(){
		return mybatis.selectList("SupportDAO.getQnaList");
	}
	
	public int insertQna(QnaVO vo) {
		int suc = mybatis.insert("SupportDAO.insertQna",vo);
		
		if(suc>0) {
			mybatis.commit();
			System.out.println("문의사항 등록 성공");
		}else {
			mybatis.rollback();
			System.out.println("문의사항 등록 실패");
		}
		return suc;
	}
}
