package com.boardmall.pro.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.boardmall.pro.dto.TagVO;
import com.boardmall.pro.util.SqlSessionFactoryBean;

public class TagDAO {

		private SqlSession mybatis;
		
		public TagDAO() {
			mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
		}
		
		public List<TagVO> getTagByCategory(String category){
			return mybatis.selectList("TagDAO.getTagByCategory", category);
		}
}

