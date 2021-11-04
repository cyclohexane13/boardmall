package com.boardmall.pro.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.boardmall.pro.dto.BoardVO;
import com.boardmall.pro.dto.GameVO;
import com.boardmall.pro.util.SqlSessionFactoryBean;

public class BoardDAO {
	
	private SqlSession mybatis;
	
	public BoardDAO() {
		mybatis = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	public void insertBoard(BoardVO vo) {
		mybatis.insert("BoardDAO.insertBoard", vo);
		mybatis.commit();
	}
	public void freeinsertBoard(BoardVO vo) {
		mybatis.insert("BoardDAO.freeinsertBoard", vo);
		mybatis.commit();
	}
	
	public void updateBoard(BoardVO vo) {
		mybatis.update("BoardDAO.updateBoard", vo);
		mybatis.commit();
	}
	
	public void deleteBoard(BoardVO vo) {
		mybatis.delete("BoardDAO.deleteBoard", vo);
		mybatis.commit();
	}
	
	public List<BoardVO> getCategoryBoardList(BoardVO vo){
		return mybatis.selectList("BoardDAO.getCategoryBoardList", vo);
	}
	
	public List<BoardVO> MinigetCategoryBoardList(BoardVO vo){
		return mybatis.selectList("BoardDAO.MinigetCategoryBoardList", vo);
	}
	
	
	public BoardVO getBoardBySeq(int seq) {
		return mybatis.selectOne("BoardDAO.getBoardBySeq" , seq);
	}
	
	public List<GameVO> getgameList(GameVO vo){
		if(vo.getSearchTitle() != null) {
			return mybatis.selectList("BoardDAO.searchGame", vo);
		}
		return mybatis.selectList("BoardDAO.getgameList" , vo);
	}
	
	public int getBoardCount(String category) {
		return mybatis.selectOne("BoardDAO.getBoardCount" , category);
	}
	
	public int getAllBoardCount() {
		return mybatis.selectOne("BoardDAO.getAllBoardCount");
	}
	
	public List<BoardVO> getAllBoardListPaging(int cPage, int numPerPage){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		return mybatis.selectList("BoardDAO.getAllBoardListPaging", map);
	}
	
	public List<BoardVO> getFreeBoardListPaging(int cPage, int numPerPage){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		return mybatis.selectList("BoardDAO.getFreeBoardListPaging", map);
	}
	
	public List<BoardVO> getReviewBoardListPaging(int cPage, int numPerPage){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		return mybatis.selectList("BoardDAO.getReviewBoardListPaging", map);
	}
	
	public List<BoardVO> getQnaBoardListPaging(int cPage, int numPerPage){ 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cPage", cPage);
		map.put("numPerPage", numPerPage);
		return mybatis.selectList("BoardDAO.getQnaBoardListPaging", map); 
	}
	
	public List<BoardVO> MinigetAllBoardList(){
		return mybatis.selectList("BoardDAO.MinigetAllBoardList");
	}
	
	public List<BoardVO> getAllBoardList(){
		return mybatis.selectList("BoardDAO.getAllBoardList");
	}
	
	public void viewcnt(int seq) {
		mybatis.update("BoardDAO.viewcnt", seq);
		mybatis.commit();
	}
	
	public List<BoardVO> searchBoard(BoardVO vo){
		return mybatis.selectList("BoardDAO.searchBoard" , vo);
	}
	
}













