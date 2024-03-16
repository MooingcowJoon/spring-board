package com.spring.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;
import com.spring.board.service.boardService;
import com.spring.board.vo.BoardVo;
import com.spring.board.vo.common.CommonCodeVo;
import com.spring.common.CommonUtil;
import com.spring.user.vo.UserVo;

@Controller
public class BoardRestController {

	@Autowired
	boardService boardService;
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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

	
	@RequestMapping(value = "/api/board/{boardType}/{boardNum}/modify.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> boardModifyAction(HttpSession session, Locale locale
												,@PathVariable("boardType") String boardType
												,@PathVariable("boardNum") int boardNum			
												,@RequestBody BoardVo submittedBoard) throws Exception {
		Map<String,String> map = new HashMap<>();
		try {
			UserVo sessionUser = (UserVo) session.getAttribute("user");
			if (sessionUser == null) {
				map.put("result","fail");
				map.put("errorCode","sessionExpired");
				map.put("msg","로그인이 만료되었습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			BoardVo targetBoard = boardService.selectBoard(boardType, boardNum);
			
			if(targetBoard == null) {
				map.put("result", "fail");
				map.put("errorCode","boardNotFound");
				map.put("msg", "게시글이 존재하지 않습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			if(!targetBoard.getCreatorId().equals(sessionUser.getId())){
				map.put("result", "fail");
				map.put("errorCode","wrongUser");
				map.put("msg", "수정 권한이 없습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			int result=boardService.boardUpdate(submittedBoard);
			
			if(result == 0 ) {
				map.put("result","error");
				map.put("msg", "에러가 발생하였습니다. 목록으로 돌아갑니다.");
				return map;
			}
				
			map.put("result","success");
			map.put("msg", "게시물이 수정되었습니다. 목록으로 돌아갑니다.");
			
		}catch(Exception e) {
			map.put("result", "error");
			logger.error("에러메시지 : ",e.getMessage(),e);
		}
		return map;
	}

	
	
	@ResponseBody
	@RequestMapping(value="/api/board/{boardType}/{boardNum}/delete.do", method = RequestMethod.GET)
	public Map<String,String> boardDelete(HttpSession session, Locale locale
											,@PathVariable("boardType") String boardType
											,@PathVariable("boardNum") int boardNum
										) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			UserVo sessionUser = (UserVo) session.getAttribute("user");
			if (sessionUser == null) {
				map.put("result","fail");
				map.put("errorCode","sessionExpired");
				map.put("msg","로그인이 만료되었습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			BoardVo targetBoard = boardService.selectBoard(boardType, boardNum);
			
			if(targetBoard == null) {
				map.put("result", "fail");
				map.put("errorCode","boardNotFound");
				map.put("msg", "게시글이 존재하지 않습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			if(!targetBoard.getCreatorId().equals(sessionUser.getId())){
				map.put("result", "fail");
				map.put("errorCode","wrongUser");
				map.put("msg", "삭제 권한이 없습니다. 목록으로 돌아갑니다.");
				return map;
			}
			
			int result=boardService.boardDelete(targetBoard);
			
			if(result == 0 ) {
				map.put("result","error");
				map.put("msg", "에러가 발생하였습니다. 목록으로 돌아갑니다.");
				return map;
			}
				
			map.put("result","success");
			map.put("msg", "게시물이 삭제되었습니다. 목록으로 돌아갑니다.");
			
		}catch(Exception e) {
			map.put("result", "error");
			logger.error("에러메시지 : ",e.getMessage(),e);
		}
		return map;
	}
	@ResponseBody
	@RequestMapping(value="/api/board/list", method = RequestMethod.POST)
	public Map<String,String> loadBoardList(Locale locale,@RequestBody List<String> param) throws Exception{
    	Map<String,String> map = new HashMap<>();
    	try {
    		List<CommonCodeVo> commonCodeList = commonCodeService.selectCommonCodeList("menu");
    		boolean selectNone = param.size()==0;
			for(CommonCodeVo code : commonCodeList) {
				if(selectNone) {
					param.add(code.getCodeId());
				}
			}
    		List<BoardVo> boardList = boardService.selectBoardListByType(param);
    		map.put("result", "success");
    		map.put("data", CommonUtil.toJson(boardList));
    		map.put("boardCnt", ""+boardService.selectBoardCnt(param));
    	}catch (Exception e) {
    		map.put("result", "error");
    	}
    	return map;
	}
	
}
