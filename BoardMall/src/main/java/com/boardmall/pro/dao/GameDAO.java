package com.boardmall.pro.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<GameVO> getImageSliderList(){
		return mybatis.selectList("GameDAO.getImageSliderList");
	}
	
	public GameVO getGameBySeq(int seq){
		return mybatis.selectOne("GameDAO.getGameBySeq", seq);
	}
	
	public List<String> getGameGerneBySeq(int seq){
		return mybatis.selectList("GameDAO.getGameGerneBySeq", seq);
	}
	
	public List<String> getGameSystemBySeq(int seq){
		return mybatis.selectList("GameDAO.getGameSystemBySeq", seq);
	}
	
	public List<String> getGameDescImgBySeq(int seq){
		return mybatis.selectList("GameDAO.getGameDescImgBySeq", seq);
	}
	
	public int getGameCount() {
		return mybatis.selectOne("GameDAO.getGameCount");
	}
	
	public List<GameVO> getGameListPaging(int cPage, int numPerPage){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		return mybatis.selectList("GameDAO.getGameListPaging", map); 
	}
	
	public int getSearchCount(String[] playerArray, String[] playtimeArray, String[] tagArray, String[] tagArray2) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("playerArray", playerArray);
		map.put("playtimeArray", playtimeArray);
		map.put("tagArray", tagArray);
		map.put("tagArray2", tagArray2);
		return mybatis.selectOne("GameDAO.getSearchCount", map);
	}
	
	public List<GameVO> getSearchGame(String[] playerArray, String[] playtimeArray, String[] tagArray, String[] tagArray2, int cPage, int numPerPage){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		map.put("playerArray", playerArray);
		map.put("playtimeArray", playtimeArray);
		map.put("tagArray", tagArray);
		map.put("tagArray2", tagArray2);
		return mybatis.selectList("GameDAO.getSearchGame", map);
	}
}
