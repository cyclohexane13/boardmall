package com.boardmall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boardmall.pro.dao.GameDAO;
import com.boardmall.pro.dto.GameVO;

@Controller
public class BoardMallController {
		
	@RequestMapping("/main.do")
	public String mainForm(Model model) {
		System.out.println("메인 페이지로 이동");
		GameDAO gameDAO = new GameDAO();
		List<GameVO> gameList = gameDAO.getMainList();
		List<GameVO> imageSliderList = gameDAO.getImageSliderList();
		model.addAttribute("gameList", gameList);
		model.addAttribute("imageSliderList", imageSliderList);
		return "main";
		
	}
	
	@RequestMapping("/productList.do")
	public String productListForm() {
		System.out.println("상품 리스트 페이지로 이동");
		
		
		return "product/productList";
	}
	
	@RequestMapping("/gameDetail.do")
	public String gameDetailForm(Model model, @RequestParam("seq") int seq) {
		System.out.println("게임상세 페이지로 이동");
		GameDAO gameDAO = new GameDAO();
		GameVO game = gameDAO.getGameBySeq(seq);
		List<String> gameGerne = gameDAO.getGameGerneBySeq(seq);
		List<String> gameSystem = gameDAO.getGameSystemBySeq(seq);
		List<String> gameDescImg = gameDAO.getGameDescImgBySeq(seq);
		model.addAttribute("game", game);
		model.addAttribute("gameGerne", gameGerne);
		model.addAttribute("gameSystem", gameSystem);
		model.addAttribute("gameDescImg",gameDescImg);
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
	//
	@RequestMapping("/etc.do")
	public String etcForm() {
		System.out.println("기타 페이지로 이동");
		return "etc/test";
	}
	@RequestMapping("/test.do")
	public String testForm(HttpServletRequest request, Model model) {
		System.out.println("결과 확인");
		//
		//결과 확인은 3가지 요소
		//협동 vs 경쟁 여부(cooperative)
		//진지한 전략게임 vs 왁자지껄 파티게임(strategic)
		//운 요소가 많음 vs 운 요소 적음(luck)
		//
		//3가지 요소가 양수인지 음수인지에 따라 결과가 달라짐 
		//
		
		int cooperative = 0;
		int strategic = 0;
		int luck = 0;
		
		
		//10개의 질문 value 1또는 2로 넘어옴
		String q1 = request.getParameter("q1");
		String q2 = request.getParameter("q2");
		String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String q5 = request.getParameter("q5");
		String q6 = request.getParameter("q6");
		String q7 = request.getParameter("q7");
		String q8 = request.getParameter("q8");
		String q9 = request.getParameter("q9");
		String q10 = request.getParameter("q10");
		
		//결과에 따라 게임 정보를 담을 수 있도록 VO와 DAO 생성
		GameVO game1 = null;
		GameVO game2 = null;
		GameDAO gameDAO = new GameDAO();
		
		//10가지 질문에 따라 3가지 요소에 변화를 주는 노가다
		if(q1.equals("1")) {
			cooperative++;
			strategic++;
			luck++;
		}else {
			cooperative--;
			strategic--;
			luck--;
		}
		
		if(q2.equals("1")) {
			cooperative--;
			strategic++;
			luck++;
		}else {
			cooperative++;
			strategic--;
			luck--;
		}
		
		if(q3.equals("1")) {
			cooperative++;
			strategic--;
			luck++;
		}else {
			cooperative--;
			strategic++;
			luck--;
		}
		
		if(q4.equals("1")) {
			cooperative++;
			strategic++;
			luck--;
		}else {
			cooperative--;
			strategic--;
			luck++;
		}
		
		if(q5.equals("1")) {
			cooperative--;
			strategic--;
			luck++;
		}else {
			cooperative++;
			strategic--;
			luck--;
		}
		
		if(q6.equals("1")) {
			cooperative--;
			strategic++;
			luck--;
		}else {
			cooperative++;
			strategic--;
			luck++;
		}
		
		if(q7.equals("1")) {
			cooperative++;
			strategic--;
			luck--;
		}else {
			cooperative--;
			strategic++;
			luck++;
		}
		
		if(q8.equals("1")) {
			cooperative--;
			strategic--;
			luck--;
		}else {
			cooperative++;
			strategic++;
			luck++;
		}
		
		if(q9.equals("1")) {
			cooperative+=2;
			strategic-=2;
			luck-=2;
		}else {
			cooperative-=2;
			strategic+=2;
			luck+=2;
		}
		
		if(q10.equals("1")) {
			cooperative+=2;
			strategic+=2;
			luck-=2;
		}else {
			cooperative-=2;
			strategic-=2;
			luck+=2;
		}
		
		
		//결과 판정 
		if(cooperative>0) {
			if(strategic>0) {
				if(luck>0) {
					//협력 전략 운빨 게임
					//86번 데드 오브 윈터
					//81번 팬데믹 
					game1 = gameDAO.getGameBySeq(86);
					game2 = gameDAO.getGameBySeq(81);
				}else {
					//협력 전략 실력 게임
					//172번 언락
					//87번 화이트채플에서 온 편지
					game1 = gameDAO.getGameBySeq(172);
					game2 = gameDAO.getGameBySeq(87);
				}
			}else {
				if(luck>0) {
					//협력 파티 운빨 게임
					//95번 뱅다이스
					//179번 5분던전
					game1 = gameDAO.getGameBySeq(95);
					game2 = gameDAO.getGameBySeq(179);
				}else {
					//협력 파티 실력 게임
					//89번 레지스탕스 아발론
					//15번 타불라의 늑대
					game1 = gameDAO.getGameBySeq(89);
					game2 = gameDAO.getGameBySeq(15);
				}
			}
		}else {
			if(strategic>0) {
				if(luck>0) {
					//경쟁 전략 운빨 게임 
					//129번 석기시대
					//51번 도미니언
					game1 = gameDAO.getGameBySeq(129);
					game2 = gameDAO.getGameBySeq(51);
				}else {
					//경쟁 전략 실력 게임 
					//47번 쿼리도
					//150번 마르코 폴로
					game1 = gameDAO.getGameBySeq(47);
					game2 = gameDAO.getGameBySeq(150);
				}
			}else {
				if(luck>0) {
					//경쟁 파티 운빨 게임 
					//21번 할리갈리
					//213번 5초 준다
					game1 = gameDAO.getGameBySeq(21);
					game2 = gameDAO.getGameBySeq(213);
				}else {
					//경쟁 파티 실력 게임
					//123번 7 원더스
					//110번 달무티
					game1 = gameDAO.getGameBySeq(123);
					game2 = gameDAO.getGameBySeq(110);
				}
			}
		}
		
		//게임 정보 담아서 result.jsp로 보냄
		model.addAttribute("game1", game1);
		model.addAttribute("game2", game2);
		return "etc/result";
	}
	
}
