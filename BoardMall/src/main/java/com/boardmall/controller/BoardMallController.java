package com.boardmall.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boardmall.pro.dao.BoardDAO;
import com.boardmall.pro.dao.GameDAO;
import com.boardmall.pro.dao.MemberDAO;
import com.boardmall.pro.dao.SupportDAO;
import com.boardmall.pro.dao.TagDAO;
import com.boardmall.pro.dto.BoardVO;
import com.boardmall.pro.dto.GameVO;
import com.boardmall.pro.dto.MemberVO;
import com.boardmall.pro.dto.Paging;
import com.boardmall.pro.dto.QnaVO;
import com.boardmall.pro.dto.TagVO;

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
	//@@@@@@@@@@상품 리스트@@@@@@@@@@@@
	@RequestMapping("/productList.do")
	public String productListForm(Model model, HttpServletRequest request) {
		System.out.println("상품 리스트 페이지로 이동");
		GameDAO gameDAO = new GameDAO();
		
		//검색조건출력
        TagDAO tagDAO = new TagDAO();
        List<TagVO> systemList = tagDAO.getTagByCategory("system");
        List<TagVO> gerneList = tagDAO.getTagByCategory("gerne");
        model.addAttribute("systemList", systemList);
        model.addAttribute("gerneList", gerneList);
        
		//페이징
		String path = "/productList.do?cPage=";
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}
		
		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 10;
        }
         // 검색
        List<GameVO> gameTagList;
        int gameTagCount;

			gameTagList = gameDAO.getGameListPaging(cPage, numPerPage);
			gameTagCount = gameDAO.getGameCount();

        int totalPage = (int)Math.ceil((double)gameTagCount/numPerPage);
        System.out.println(gameTagCount + " " + totalPage);
        Paging paging = new Paging();
        paging.paging(request, path, gameTagList, totalPage, cPage, numPerPage);
		model.addAttribute("gameTagList", gameTagList);
		/*
		 * List<GameVO> productList = gameDAO.getGameListPaging(cPage, numPerPage); int
		 * productCount = gameDAO.getGameCount(); int totalPage =
		 * (int)Math.ceil((double)productCount/numPerPage); Paging paging = new
		 * Paging(); paging.paging(request, path, productList, totalPage, cPage,
		 * numPerPage);
		 */
        

		return "product/productList";
	}
	
	@RequestMapping("/test.do")
	public String getCheckList(Model model, HttpServletRequest request) {
		System.out.println("상품 리스트 검색결과 페이지로 이동");
		GameDAO gameDAO = new GameDAO();
		List<GameVO> gameTagList;
		String path = "/productList.do?cPage="; 
		int gameTagCount;
		String[] playerArray = request.getParameterValues("check1");
		if(playerArray != null && playerArray[0].equals("selectAll1")) { 
			playerArray = null; 
		}
		System.out.println("1: " + Arrays.toString(playerArray));
		
		String[] playtimeArray = request.getParameterValues("check2");
		if(playtimeArray != null && playtimeArray[0].equals("selectAll2")) { 
			playtimeArray = null; 
		}
		System.out.println("2: " + Arrays.toString(playtimeArray));
		
		String[] tagArray = request.getParameterValues("check3");
		if(tagArray != null && tagArray[0].equals("selectAll3")) {
			tagArray = null;
		}
		System.out.println("3: " + Arrays.toString(tagArray));
		
		String[] tagArray2 = request.getParameterValues("check4");
		if(tagArray2 != null && tagArray2[0].equals("selectAll4")) {
			tagArray2 = null;
		}
		System.out.println("4: " + Arrays.toString(tagArray2));

		//페이징
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}

		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 10;
        }
        
		if(tagArray == null && tagArray2 == null && playerArray == null && playtimeArray == null) {
			gameTagList = gameDAO.getGameListPaging(cPage, numPerPage);
			gameTagCount = gameDAO.getGameCount();
		}else {
			gameTagList = gameDAO.getSearchGame(playerArray,playtimeArray,tagArray,tagArray2,cPage,numPerPage);
			gameTagCount = gameDAO.getSearchCount(playerArray,playtimeArray,tagArray,tagArray2);
		}
        int totalPage = (int)Math.ceil((double)gameTagCount/numPerPage);
        System.out.println(gameTagCount + " " + totalPage); // 잘 되는데 이 부분이 시스템, 장르 둘 다 선택 시 0,0으로 나옴.. 왜? 덕분에 페이지를 넘길수도 없다..
        Paging paging = new Paging();
        paging.pagingSearch(playerArray, playtimeArray, tagArray, tagArray2, request, path, gameTagList, totalPage, cPage, numPerPage);
		model.addAttribute("gameTagList", gameTagList);
		return "test";
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
	
/* @@@@@@@@@@@@@@@@@@@@게시판 시작@@@@@@@@@@@@@@@@@@@@ */
	
	@RequestMapping("/boardList.do")
	public String boardListForm(Model model ,BoardVO vo) {
		System.out.println("커뮤니티 페이지로 이동");
		BoardDAO boardDAO = new BoardDAO();
		vo.setCategory("자유게시판");
		List<BoardVO> FreeboardList = boardDAO.MinigetCategoryBoardList(vo);
		vo.setCategory("리뷰게시판");
		List<BoardVO> ReviewboardList = boardDAO.MinigetCategoryBoardList(vo);
		vo.setCategory("질문게시판");
		List<BoardVO> QnaboardList = boardDAO.MinigetCategoryBoardList(vo);
		List<BoardVO> AllBoardList = boardDAO.MinigetAllBoardList();
		model.addAttribute("AllBoardList" , AllBoardList);
		model.addAttribute("FreeboardList", FreeboardList);
		model.addAttribute("ReviewboardList", ReviewboardList);
		model.addAttribute("QnaboardList", QnaboardList);
		return "board/boardList";
	}
	 
	  @RequestMapping("/FreeBoardList.do")
	  public String FreeBoardListListForm(Model model, HttpServletRequest request) {
		System.out.println("자유게시판으로 이동");
		BoardDAO boardDAO = new BoardDAO();
		String category = "자유게시판";
		
		String path = "/FreeBoardList.do?cPage=";
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}
		
		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 15;
        }
        
        List<BoardVO> BoardList = boardDAO.getFreeBoardListPaging(cPage, numPerPage);
        int boardcount = boardDAO.getBoardCount(category);
        int totalPage = (int)Math.ceil((double)boardcount/numPerPage);
        Paging paging = new Paging();
        paging.Boardpaging(request, path, BoardList, totalPage, cPage, numPerPage, category);
		return "board/categoryboardList";
	} 
	  
	  
	
	  @RequestMapping("/ReviewBoardList.do")
	public String ReviewBoardListForm(Model model, HttpServletRequest request) {
		System.out.println("리뷰게시판으로 이동");
		BoardDAO boardDAO = new BoardDAO();
		String category = "리뷰게시판";
		
		String path = "/ReviewBoardList.do?cPage=";
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}
		
		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 15;
        }
        List<BoardVO> BoardList = boardDAO.getReviewBoardListPaging(cPage, numPerPage);
        for(BoardVO board : BoardList) {
        	System.out.println(board);
        }
        int boardcount = boardDAO.getBoardCount(category);
        int totalPage = (int)Math.ceil((double)boardcount/numPerPage);
        Paging paging = new Paging();
        paging.Boardpaging(request, path, BoardList, totalPage, cPage, numPerPage, category);
		return "board/categoryboardList";
	}
	 
	 
	

	
	 @RequestMapping("/QnaBoardList.do")
	public String QnaBoardListForm(Model model, HttpServletRequest request) {
		System.out.println("질문게시판으로 이동");
		BoardDAO boardDAO = new BoardDAO();
		String category = "질문게시판";
		
		String path = "/QnaBoardList.do?cPage=";
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}
		
		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 15;
        }
        List<BoardVO> BoardList = boardDAO.getQnaBoardListPaging(cPage, numPerPage);
        int boardcount = boardDAO.getBoardCount(category);
        int totalPage = (int)Math.ceil((double)boardcount/numPerPage);
        Paging paging = new Paging();
        paging.Boardpaging(request, path, BoardList, totalPage, cPage, numPerPage, category);
		return "board/categoryboardList";
	}
	 
	
	
	
	@RequestMapping("/AllBoardList.do")
	public String AllBoardListForm(Model model, HttpServletRequest request) {
		System.out.println("전체게시판로 이동");
		BoardDAO boardDAO = new BoardDAO();
		String category = "전체게시판";
		
		String path = "/AllBoardList.do?cPage=";
		int cPage;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			cPage = 1;
		}
		
		int numPerPage;  
        try {
            numPerPage = Integer.parseInt(request.getParameter("numPerPage"));
        }catch (NumberFormatException e) {
            numPerPage = 15;
        }
        List<BoardVO> AllBoardList = boardDAO.getAllBoardListPaging(cPage, numPerPage);
        int Allboardcount = boardDAO.getAllBoardCount();
        int totalPage = (int)Math.ceil((double)Allboardcount/numPerPage);
        Paging paging = new Paging();
        paging.Boardpaging(request, path, AllBoardList, totalPage, cPage, numPerPage , category);
		return "board/categoryboardList";
	}

	@RequestMapping("/boardWrite.do")
	public String boardWriteForm() {
		System.out.println("커뮤니티 글 작성 페이지로 이동");
		return "board/boardWrite";
	}
		
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) {
		System.out.println("게시판 글 삽입");
		BoardDAO boardDAO = new BoardDAO();
		if(vo.getCategory().equals("자유게시판")) {
			boardDAO.freeinsertBoard(vo);
		}else {
			boardDAO.insertBoard(vo);
		}
		return "redirect:boardList.do";
	}
	
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO vo, @RequestParam("seq") int seq) {
		System.out.println("게시판 글 수정");
		vo.setSeq(seq);
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.updateBoard(vo);
		return "redirect:boardList.do";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		System.out.println("게시판 글 삭제");
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.deleteBoard(vo);
		return "redirect:boardList.do";
	}
	
	@RequestMapping("/boardDetail.do")
	public String boardDetail(Model model, @RequestParam("seq") int seq) {
		System.out.println("게시판 상세보기 페이지로 이동");
		BoardDAO boardDAO = new BoardDAO();
		BoardVO board = new BoardVO();
		GameVO game = new GameVO();
		GameDAO gameDAO = new GameDAO();
		board = boardDAO.getBoardBySeq(seq);
		game = gameDAO.getGameBySeq(board.getGameseq());
		boardDAO.viewcnt(seq);
		System.out.println("viewcnt +");
		model.addAttribute("board" , board);
		model.addAttribute("game" , game);
		return "board/boardDetail";
	}
	
	@RequestMapping("/searchGame.do")
	public String searchGame(Model model, GameVO vo) {
		System.out.println("게임찾기 페이지로 이동");
		BoardDAO boardDAO = new BoardDAO();
		if(vo.getSearchTitle() == null) {
			vo.setSearchTitle("");
		}
		List<GameVO> gameList = boardDAO.getgameList(vo);
		model.addAttribute("gameList", gameList);
		return "board/searchGame";
	}
	
	@RequestMapping("/boardUpdateForm.do")
	public String boardUpdateForm(Model model, @RequestParam("seq") int seq) {
		System.out.println("게시판 수정 페이지로 이동");
		BoardDAO boardDAO = new BoardDAO();
		BoardVO board = new BoardVO();
		board = boardDAO.getBoardBySeq(seq);
		model.addAttribute("board" , board);
		return "board/boardUpdate";
	}
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("title", "제목");
		conditionMap.put("content", "내용");
		return conditionMap;
	}
	
	  @RequestMapping("/searchBoard.do")
	  public String search(BoardVO vo , Model model, HttpServletRequest request) {
		  BoardDAO boardDAO = new BoardDAO();
		  List<BoardVO> boardList = boardDAO.searchBoard(vo);
		  model.addAttribute("SearchBoardList" , boardList);
		  return "board/categoryboardList";
	  }

	
	/* @@@@@@@@@@@@@@@@@@@@게시판 끝@@@@@@@@@@@@@@@@@@@@ */
	
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
    public String supportForm(Model model, @RequestParam(value = "paging") int paging) {

        System.out.println("고객지원 페이지로 이동");
        SupportDAO qnaDao = new SupportDAO();
        List<QnaVO> qnaList = qnaDao.getQnaList();
        model.addAttribute("qnaList",qnaList);
        if(!qnaList.isEmpty()) {
        	
        
        QnaVO vo = qnaList.get(0);
        int seq = vo.getSeq();
        int maxPage = seq/9+1;
        System.out.println(maxPage);
        model.addAttribute("maxPage",maxPage);
        model.addAttribute("lastSeq",seq);
        if(paging<0) {
            paging = 0;
        }else if(paging > maxPage) {
            paging = maxPage;
        }
        model.addAttribute("paging",paging);
        }
        return "member/supportQna";

    }
	 @RequestMapping("/submitQna.do")
	    public String submitQna(@ModelAttribute() QnaVO vo) {
	        System.out.println("문의사항 등록");

	        SupportDAO qnaDao = new SupportDAO();
	        qnaDao.insertQna(vo);

	        return "redirect:support.do?paging=0";
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
	@RequestMapping("/loginCheck.do")
    public String loginForm(Model model,@RequestParam("userid") String userid,@RequestParam("pwd") String pwd) {
        System.out.println("로그인 페이지로 이동");
        String path = "";

        MemberDAO dao = new MemberDAO();
        MemberVO vo = new MemberVO();

        model.addAttribute("userid",userid);
        model.addAttribute("pwd",pwd);
        vo.setUserid(userid);
        vo.setPwd(pwd);

        int result = dao.Login(vo);

        if (result == 1) {
            path = "redirect:index.html";
        } else {
            path = "member/login";
        }
        return path;
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
	//기타 페이지 기능
	
@RequestMapping("/etc.do")
public String etcForm() {
	System.out.println("기타 페이지로 이동");
	return "etc/gameTest";
}
@RequestMapping("/gameTest.do")
public String gameTestForm(HttpServletRequest request, Model model) {
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
