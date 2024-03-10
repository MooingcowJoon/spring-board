package com.spring.board.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

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
        return "mbti2";
    }

	
    @RequestMapping(value = "/api/mbti.do", method = RequestMethod.GET)
    @ResponseBody
    public List<String> mbtiPage(@RequestParam String commonCodeType) throws Exception{
    	Map<String,List<String>> map = new HashMap<>();
		
    	List<CommonCodeVo> mbtiCommonCodeList = commonCodeService.selectCommonCodeList(commonCodeType);
    	
    	List<String> mbtiTypeList = new ArrayList();
    	
    	for (CommonCodeVo code : mbtiCommonCodeList) {
    		mbtiTypeList.add(code.getCodeName());
    	}
    	
    	List<BoardVo> questionBoards = boardService.selectBoardListByTypeList(mbtiTypeList);
    	List<String> questions = new ArrayList();
    	for (BoardVo questionBoard : questionBoards) {
    		questions.add(questionBoard.getBoardComment());
    	}
    	
    	return questions;
    }
	
    @RequestMapping(value = "/api/mbti/submit.do", method = RequestMethod.POST)
    @ResponseBody
    public  String mbtiSubmit(@RequestBody Map<String,Integer> param) throws Exception{
    	List<CommonCodeVo> mbtiCodeList = commonCodeService.selectCommonCodeList("mbti");
    	
    	char[] charArr = new char[4];
    	for(int i=0; i<mbtiCodeList.size(); i+=2) {
			String typeA = mbtiCodeList.get(i).getCodeName();
			String typeB = mbtiCodeList.get(i+1).getCodeName();
			
			int scoreA = param.get(typeA);
			int scoreB = param.get(typeB);
			
			char charA = typeA.charAt(0);
			char charB = typeB.charAt(0);
			
			if(scoreA>scoreB) {
				charArr[i/2]=charA;
			}else if(scoreA<scoreB) {
				charArr[i/2]=charB;
			}else {
				charArr[i/2]= charA<charB ? charA : charB; 
			}
    	}
    	String mbti = new String(charArr);
    	
    	return mbti;
    }
    @RequestMapping(value = "/api/mbti/submit/java.do", method = RequestMethod.POST)
    @ResponseBody
    public  Map<String,String> mabtiJavaSubmit(@RequestBody List<String> params) throws Exception{
	// 내부반복 구현코드 자바버전 낮아서 외부반복으로 다시 구현
    	
    	Map<String,String> map = new HashMap<>();
    	
    	try {
        	List<CommonCodeVo>  mbtiCodeList = commonCodeService.selectCommonCodeList("mbti");
        	// []
        	List<String> codeNameList = new ArrayList<>();
        	//["EI","IE",...,"PJ"]
        	for(CommonCodeVo code : mbtiCodeList) {
        		codeNameList.add(code.getCodeName());
        	}
        	// 문항vo 리스트
        	List<BoardVo> boardList =  boardService.selectBoardListByTypeList(codeNameList);
        	
        	// []
        	int[] majorTypes = new int[boardList.size()];
        	
        	
        	// BOARD_TITLE = 'EI'
        	// 즉 보드타이틀의 첫글자가 해당문항 대표 타입
        	// 대표타입문자 아스키코드값 10진수배열로 저장
        	for (int qNo=0; qNo<majorTypes.length; qNo++) {
        		majorTypes[qNo]=boardList.get(qNo).getBoardTitle().charAt(0);
        	}
        	
        	// 각 성향당 획득점수를 담아놓는 스코어맵	
        	Map<Integer,Integer> scoreMap = new HashMap<>();
        	
        	// 키			: 	밸류
        	// 문항별 대표타입 	:	문항별 응답점수
        	for(int qNo=0; qNo<params.size(); qNo++) {
        		scoreMap.put(majorTypes[qNo], Integer.parseInt(params.get(qNo)));
        	}
        	
        	// MBTI 타입 저장할 차배열 생성, 비교값 정해져있으므로 스트링빌더 안씀
        	char[] MBTI = new char[codeNameList.size()/2];
        	
        	// 순서대로 담긴 MBTI타입리스트 반복
        	// 스코어맵에서 점수 참조하여 비교
        	// 동점일시 아스키코드10진수값 낮은타입 대입
        	for(int i=0; i<codeNameList.size(); i+=2) {
        		int typeA_ASCII = codeNameList.get(i).charAt(0);
        		int typeB_ASCII = codeNameList.get(i).charAt(1);
      		
    	  		int typeA_score = scoreMap.get(typeA_ASCII);
    	  		int typeB_score = scoreMap.get(typeB_ASCII);
      		
    	  		int index = i/2;
    	  		
    	  		if(typeA_score > typeB_score) {
    	  			MBTI[index] = (char) typeA_ASCII;
    	  		}else if(typeA_score  < typeB_score) {
    	  			MBTI[index] = (char) typeB_ASCII;
    	  		}else if (typeA_score == typeB_score) {
    	  			MBTI[index] = typeA_ASCII < typeB_ASCII ? (char) typeA_ASCII : (char) typeB_ASCII;
    	  		}
    	  		
    	    	map.put("result", "success");
    	       	// 차배열 스트링을 변환해서 맵에 담음
    	    	map.put("mbti", new String(MBTI));
        	}
        	
    	}catch (Exception e){
    		map.put("result", "error");
    		map.put("errorMessage", e.getMessage());
    		return map;
    	}

 
    	return map;
    	
//    	
//		/*
//		 * // 공통 코드중 코드타입 "mbti" 인 공통코드vo 리스트 가져옴 List<CommonCodeVo> mbtiCodeList =
//		 * commonCodeService.selectCommonCodeList("mbti");
//		 */
//    	
//    	// 공통코드vo리스트 내부반복돌려서 보드타입만(EI, IE) 등 리스트로가져옴 
//    	List<String> codeNameList = commonCodeService.selectCommonCodeList("mbti")
//    								.stream()
//    								.map(code->code.getCodeName())
//    								.collect(Collectors.toList());
//    	// 각 질문의 대표타입 문자의 인트값 배열 
//    	int[] majorTypesOfEachQuestion = boardService.selectBoardListByTypeList(codeNameList)
//    											.stream()
//    											.mapToInt(board -> board.getBoardTitle().charAt(0))
//    											.toArray();
//    	
//    	// 각 성향당 획득점수를 담아놓는 스코어맵		
//    	Map<Integer,Integer> scoreMap = codeNameList.stream()
//    											.map(EI->EI.charAt(0))
//    											.distinct()
//    											.collect(Collectors.toMap(
//												E -> {
//													return (int)E;
//												}
//												, E->0
//												,(oldVal,newVal)->oldVal
//												,HashMap::new) );
//    	// 유저가 택한 라디오버튼 밸류 = {1~7}
//    	int[] ans = params.stream().mapToInt(p->Integer.parseInt(p)).toArray();
//      	
//      	for (int i = 0; i<ans.length; i++) {
//      		scoreMap.put(scoreMap.get(majorTypesOfEachQuestion[i]), ans[i]);
//      	}
//    	
//      	
//      	// E vs I, N vs S 등 비교할 타입 순서 
//      	int[] types = codeNameList.stream().mapToInt(EI->EI.charAt(0)).toArray();
//      	
//      	char[] MBTI = new char[types.length/2];
//      	for(int i = 0; i<types.length; i+=2) {
//      		int typeA_ASCII = types[i];
//      		int typeB_ASCII = types[i+1];
//      		
//      		int typeA_score = scoreMap.get(typeA_ASCII);
//      		int typeB_score = scoreMap.get(typeB_ASCII);
//      		
//      		int index = i/2;
//      		
//      		if(typeA_score > typeB_score) {
//      			MBTI[index] = (char) typeA_ASCII;
//      		}else if(typeA_score  < typeB_score) {
//      			MBTI[index] = (char) typeB_ASCII;
//      		}else if (typeA_score == typeB_score) {
//      			MBTI[index] = typeA_ASCII < typeB_ASCII ? (char) typeA_ASCII : (char) typeB_ASCII;
//      		}
//      	}

//    	String response = new String(MBTI);
    	
//    	return params.toString();
    }
}
