package com.boardmall.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boardmall.pro.dao.GameDAO;
import com.boardmall.pro.dto.GameVO;

@Controller
public class BoardMallController {
		
	@RequestMapping("/main.do")
	public String mainForm(Model model) {
		System.out.println("메인 페이지로 이동");
		GameDAO gameDAO = new GameDAO();
		List<GameVO> gameList = gameDAO.getMainList();
		
		model.addAttribute("gameList", gameList);
		
		return "main";
		
	}
	
	@RequestMapping("/productList.do")
	public String productListForm() {
		System.out.println("상품 리스트 페이지로 이동");
		
		
		return "product/productList";
	}
	
	@RequestMapping("/gameDetail.do")
	public String gameDetailForm() {
		System.out.println("게임상세 페이지로 이동");
		return "product/gameDetail";
	}
	
	@RequestMapping("/boardList.do")
	public String boardListForm() {
		System.out.println("커뮤니티 페이지로 이동");
		return "board/boardList";
	}
	
	@RequestMapping("/boardCategoryList.do")
	public String boardCategoryListForm() {
		System.out.println("커뮤니티 상세 페이지로 이동");
		return "board/boardCategoryList";
	}
	
	@RequestMapping("/boardWrite.do")
	public String boardWriteForm() {
		System.out.println("커뮤니티 글 작성 페이지로 이동");
		return "board/boardWrite";
	}
	
	@RequestMapping("/notice.do")
	public String noticeListForm() {
		System.out.println("공지사항 페이지로 이동");
		return "board/notice";
	}
	
	@RequestMapping("/noticeDetail.do")
	public String noticeDetailForm() {
		System.out.println("공지사항 상세보기 페이지로 이동");
		return "board/noticeDetail";
	}
	
	@RequestMapping("/noticeWrite.do")
	public String noticeWriteForm() {
		System.out.println("공지사항 작성 페이지로 이동");
		return "board/noticeWrite";
	}
	
	@RequestMapping("/support.do")
	public String supportForm() {
		System.out.println("고객지원 페이지로 이동");
		return "member/supportQna";
	}
	
	@RequestMapping("/faq.do")
	public String faqForm() {
		System.out.println("faq 페이지로 이동");
		return "member/supportFaq";
	}
	
	@RequestMapping("/login.do")
	public String loginForm() {
		System.out.println("로그인 페이지로 이동");
		return "member/login";
	}
	
	@RequestMapping("/contract.do")
	public String contractForm() {
		System.out.println("약관동의 페이지로 이동");
		return "member/contract";
	}
	
	@RequestMapping("/join.do")
	public String joinForm() {
		System.out.println("회원가입 페이지로 이동");
		return "member/join";
	}
	
	//추후에 장바구니 페이지 만들어질 시 추가boardWrite.do
	@RequestMapping("/cartList.do")
	public String cartListForm() {
		System.out.println("장바구니 페이지로 이동");
		return "order/cart";
	}
	
	//추후에 구매 페이지 만들어질 시 추가
	@RequestMapping("/buy.do")
	public String buyForm() {
		System.out.println("구매 페이지로 이동");
		return "order/order";
	}
	
	@RequestMapping("/mypage.do")
	public String mypageForm() {
		System.out.println("마이페이지로 이동");
		return "member/mypage";
	}
	
	
}
