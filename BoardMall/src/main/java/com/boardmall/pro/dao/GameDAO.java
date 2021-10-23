package com.boardmall.pro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.boardmall.pro.dto.GameVO;
import com.boardmall.pro.util.SqlSessionFactoryBean;

public class GameDAO {
	
	private SqlSession mybatis;
	
	public GameDAO() {
		mybatis  = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public List<GameVO> getMainList(){
		return mybatis.selectList("GameDAO.getMainList");
	}
	
}
