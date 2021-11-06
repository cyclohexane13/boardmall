package com.boardmall.pro.dto;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class Paging {
	
	public void paging(HttpServletRequest request, String path, 
			List<GameVO> productList, int totalPage, int cPage, int numPerPage) {
		
		String pageBar = "";
		int pageBarSize = 5;
		int pageNo = ((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd = pageNo + pageBarSize - 1;
		
		// 페이지바
		 if(pageNo==1) {
			 	if(cPage != 1) {
			 		pageBar += "<a href='" + request.getContextPath() + path + (1) + "&numPerPage=" + numPerPage + "'>[FIRST] </a>";
			 		pageBar += "<span> [PREV] &nbsp;</span>";
			 	} else {
			 		pageBar += "<span>[FIRST] [PREV] &nbsp;</span>";
			 	}	
	        } else {
	        	pageBar += "<a href='" + request.getContextPath() + path + (1) + "&numPerPage=" + numPerPage + "'>[FIRST] </a>";
	        	pageBar += "<a href='" + request.getContextPath() + path + (pageNo-1) + "&numPerPage=" + numPerPage + "'>[PREV] </a>";
	        }
	        //선택페이지 만들기
	        while(!(pageNo>pageEnd || pageNo>totalPage)) {
	        	if(cPage==pageNo) {
		        	pageBar += "<span class='cPage'>[" + pageNo + "] </span>";
		        } else {
		        	pageBar += "<a href='" + request.getContextPath() + path + (pageNo) + "&numPerPage=" + numPerPage + "'>[" + pageNo + "]</a>";
		        }
	        	pageNo++;
	        }
	        
	        if(pageNo>totalPage) {
	            pageBar += "<span>&nbsp; [NEXT] [END]</span>";
	        }else {
	            pageBar +="<a href='" + request.getContextPath() + path + (pageNo) + "&numPerPage=" + numPerPage + "'> [NEXT] </a>";
	            pageBar +="<a href='" + request.getContextPath() + path + (24) + "&numPerPage=" + numPerPage + "'> [END] &nbsp;</a>";
	        }
	        
	        request.setAttribute("productList", productList);
			request.setAttribute("cPage", cPage);
			request.setAttribute("numPerPage", numPerPage);
			request.setAttribute("pageBar", pageBar);
	}
	
	
	public void Boardpaging(HttpServletRequest request, String path, 
			List<BoardVO> BoardList, int totalPage, int cPage, int numPerPage, String category) {
		
		String pageBar = "";
		int pageBarSize = 5;
		int pageNo = ((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd = pageNo + pageBarSize - 1;
		
		// 페이지바
		 if(pageNo==1) {
			 	if(cPage != 1) {
			 		pageBar += "<a href='" + request.getContextPath() + path + (1) + "&numPerPage=" + numPerPage + "'>[FIRST] </a>";
			 		pageBar += "<span> [PREV] &nbsp;</span>";
			 	} else {
			 		pageBar += "<span>[FIRST] [PREV] &nbsp;</span>";
			 	}	
	        } else {
	        	pageBar += "<a href='" + request.getContextPath() + path + (1) + "&numPerPage=" + numPerPage + "'>[FIRST] </a>";
	        	pageBar += "<a href='" + request.getContextPath() + path + (pageNo-1) + "&numPerPage=" + numPerPage + "'>[PREV] </a>";
	        }
	        //선택페이지 만들기
	        while(!(pageNo>pageEnd || pageNo>totalPage)) {
	        	if(cPage==pageNo) {
		        	pageBar += "<span class='cPage'>[" + pageNo + "] </span>";
		        } else {
		        	pageBar += "<a href='" + request.getContextPath() + path + (pageNo) + "&numPerPage=" + numPerPage + "'>[" + pageNo + "]</a>";
		        }
	        	pageNo++;
	        }
	        
	        if(pageNo>totalPage) {
	            pageBar += "<span>&nbsp; [NEXT] [END]</span>";
	        }else {
	            pageBar +="<a href='" + request.getContextPath() + path + (pageNo) + "&numPerPage=" + numPerPage + "'> [NEXT] </a>";
	            pageBar +="<a href='" + request.getContextPath() + path + (totalPage) + "&numPerPage=" + numPerPage + "'> [END] &nbsp;</a>";
	        }
	        
	        if(category.equals("전체게시판")) {
	        	request.setAttribute("AllBoardList", BoardList);
	        }else if(category.equals("자유게시판")) {
	        	request.setAttribute("FreeboardList", BoardList);
	        }else if(category.equals("질문게시판")) {
	        	request.setAttribute("QnaboardList", BoardList);
	        }else if(category.equals("리뷰게시판")) {
	        	request.setAttribute("ReviewboardList", BoardList);
	        }
			request.setAttribute("cPage", cPage);
			request.setAttribute("numPerPage", numPerPage);
			request.setAttribute("pageBar", pageBar);
	}
	
	
	public void pagingSearch(String[] playerArray, String[] playtimeArray, String[] tagArray, String[] tagArray2, HttpServletRequest request, String path, 
			List<GameVO> productList, int totalPage, int cPage, int numPerPage) {
		
		String pageBar = "";
		int pageBarSize = 5;
		int pageNo = ((cPage-1)/pageBarSize)*pageBarSize+1;
		int pageEnd = pageNo + pageBarSize - 1;
		
		// 페이지바
		 if(pageNo==1) {
			 	if(cPage != 1) {
			 		pageBar += "<a href='javascript:void(0)' onclick='searchOptionPaging(" + 1 + ");'>[FIRST] </a>";
			 		pageBar += "<span> [PREV] &nbsp;</span>";
			 	} else {
			 		pageBar += "<span>[FIRST][PREV] &nbsp;</span>";
			 	}	
	        } else {
	        	pageBar += "<a href='javascript:void(0)' onclick='searchOptionPaging(" + 1 + ");'>[FIRST] </a>";
	        	pageBar += "<a href='javascript:void(0)' onclick='searchOptionPaging(" + (pageNo - 1) + ");'>[PREV] </a>";
	        }
	        //선택페이지 만들기
	        while(!(pageNo>pageEnd || pageNo>totalPage)) {
	        	if(cPage==pageNo) {
		        	pageBar += "<span class='cPage' style='font-weight:bold;color:#ffc107;'>[" + pageNo + "] </span>";
		        } else {
		        	pageBar += "<a href='javascript:void(0)' onclick='searchOptionPaging("+pageNo+");'>[" + pageNo + "]</a>";
		        }
	        	pageNo++;
	        }
	        
	        if(pageNo>totalPage) {
	            pageBar += "<span>&nbsp; [NEXT] [END]</span>";
	        }else {
	            pageBar +="<a href='javascript:void(0)' onclick='searchOptionPaging(" + pageNo + ");'>&nbsp; [NEXT] </a>";
	            pageBar +="<a href='javascript:void(0)' onclick='searchOptionPaging(" + totalPage + ");'> [END] &nbsp;</a>";
	        }
	        
	        request.setAttribute("productList", productList);
			request.setAttribute("cPage", cPage);
			request.setAttribute("numPerPage", numPerPage);
			request.setAttribute("pageBar", pageBar);
			request.setAttribute("playerArray", playerArray);
			request.setAttribute("playtimeArray", playtimeArray);
			request.setAttribute("tagArray", tagArray);
			request.setAttribute("tagArray2", tagArray2);
	}
}

