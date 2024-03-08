package com.spring.board.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;
import com.spring.board.service.boardService;
import com.spring.board.vo.BoardVo;
import com.spring.board.vo.PageVo;
import com.spring.board.vo.common.CommonCodeVo;
import com.spring.common.CommonUtil;

@Controller
public class BoardController {

	@Autowired
	boardService boardService;
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/board/boardList.do", method = RequestMethod.GET)
	public String boardList(Locale locale, Model model, PageVo pageVo) throws Exception {

		List<BoardVo> boardList = new ArrayList<BoardVo>();

		int page = 1;
		int totalCnt = 0;

		if (pageVo.getPageNo() == 0) {
			pageVo.setPageNo(page);
			;
		}

		// 의문: 현재 boardList쿼리에 TOTALCNT 쿼리문이 있는데
		// totalCnt 그냥 list.size() 함수 반환값으로 할당하면 안되나? 꼭 db에 엑세스 해야하나?
		// 아니면, totalCnt 구하는 쿼리와 보드리스트 반환시키는 쿼리를 따로 분리할 수 없을까?

		// 우선, 토탈카운트를 서비스 -> 서비스구현 -> 다오 -> 마이바티스 -> JDBC(OJDBC) -> 오라클 서버에 TCP/IP로
		// FETCH
		totalCnt = boardService.selectBoardCnt();

		boardList = boardService.SelectBoardList(pageVo);

		model.addAttribute("boardList", boardList);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("pageNo", page);

		return "board/boardList";
	}

	
	@RequestMapping(value = "/board/{boardType}/{boardNum}/boardView.do", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model, @PathVariable("boardType") String boardType,
			@PathVariable("boardNum") int boardNum) throws Exception {

		BoardVo boardVo = new BoardVo();

		boardVo = boardService.selectBoard(boardType, boardNum);
		
		if(boardVo == null) {
			model.addAttribute("response","error");
		}
		model.addAttribute("boardType", boardType);
		model.addAttribute("boardNum", boardNum);
		model.addAttribute("board", boardVo);

		return "board/boardView";
	}

	@RequestMapping(value = "/board/boardWrite.do", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model, PageVo pageVo) throws Exception {

		model.addAttribute("pageNo", pageVo.getPageNo());
		model.addAttribute("pageSize", pageVo.getPageSize());

		return "board/boardWrite";
	}

	@RequestMapping(value = "/board/{boardType}/{boardNum}/boardModify.do", method = RequestMethod.GET)
	public String boardModify(Locale locale, Model model, @PathVariable("boardType") String boardType,
			@PathVariable("boardNum") int boardNum, PageVo pageVo) throws Exception {

		model.addAttribute("pageNo", pageVo.getPageNo());
		int pageSize = pageVo.getPageSize();
		if (pageSize == 0) {
			pageSize = 5;
		}
		model.addAttribute("pageSize", pageSize);

		model.addAttribute("board", boardService.selectBoard(boardType, boardNum));

		return "board/boardModify";
	}

	@RequestMapping(value = "/board/boardWriteAction.do", method = RequestMethod.POST)
	@ResponseBody
	public String boardWriteAction(Locale locale,@RequestBody BoardVo boardVo) throws Exception {

		HashMap<String, String> result = new HashMap<String, String>();
		CommonUtil commonUtil = new CommonUtil();		
		List<BoardVo> boardList = boardVo.getBoardList();
		int resultCnt = boardService.boardInsert(boardList);
		result.put("result", resultCnt > 0 ? "success" : "error"); 
		String callbackMsg = commonUtil.getJsonCallBackString(" ", result);
		System.out.println("callbackMsg::" + callbackMsg);

		return callbackMsg;
	}

	
	@RequestMapping(value = "/board/boardListAction.do", method = RequestMethod.GET)
	@ResponseBody
	public List<BoardVo> boardListAction(Locale locale,@RequestParam String boardType) throws Exception {
		
		return boardService.SelectBoardListByType(boardType);
	}
	
	
	
	@RequestMapping(value = "/board/boardModifyAction.do", method = RequestMethod.POST)
	@ResponseBody
	public String boardModifyAction(Locale locale, BoardVo boardVo) throws Exception {

		HashMap<String, String> result = new HashMap<String, String>();
		CommonUtil commonUtil = new CommonUtil();

		int resultCnt = boardService.boardUpdate(boardVo);

		result.put("success", (resultCnt > 0) ? "Y" : "N");
		String callbackMsg = commonUtil.getJsonCallBackString(" ", result);
		System.out.println("callbackMsg::" + callbackMsg);

		return callbackMsg;
	}

	@RequestMapping(value = "/board/boardDeleteAction.do", method = RequestMethod.POST)
	@ResponseBody
	public String boardDeleteAction(Locale locale, BoardVo boardVo) throws Exception {
			
		HashMap<String, String> result = new HashMap<String, String>();
		CommonUtil commonUtil = new CommonUtil();

		int resultCnt = boardService.boardDelete(boardVo);

		String resultCode = resultCnt > 0 ? "success" : "error";
		result.put("resultCode", resultCode);
		String callbackMsg = commonUtil.getJsonCallBackString(" ", result);
		System.out.println("callbackMsg::" + callbackMsg);

		return callbackMsg;
	}
	

    @RequestMapping("/mbti.do")
    public String index(){
        return "mbti";
    }

	
    @RequestMapping(value = "/api/mbti.do", method = RequestMethod.GET)
    @ResponseBody
    public  Map<String,List<BoardVo>> api(@RequestParam String commonCodeType) throws Exception{
    	Map<String,List<BoardVo>> map = new HashMap<>(); 
    	List<CommonCodeVo> codeList = commonCodeService.selectCommonCodeList(commonCodeType);
    	for (CommonCodeVo code : codeList) {
    		String codeName = code.getCodeName();
    		List<BoardVo> questionList = boardService.SelectBoardListByType(codeName);
    		map.put(codeName,questionList);
    	}
    	return map;
    }
	
}
