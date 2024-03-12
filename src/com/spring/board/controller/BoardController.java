package com.spring.board.controller;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
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
		List<CommonCodeVo> commonCodeList = commonCodeService.selectCommonCodeList("menu");
		List<String> boardTypeList = new ArrayList();
		
		Map<String,String> typeMap = new HashMap<>();
		for(CommonCodeVo code : commonCodeList) {
			boardTypeList.add(code.getCodeId());
			typeMap.put(code.getCodeId(), code.getCodeName());
		}
		
		int page = 1;
		int totalCnt = 0;

		if (pageVo.getPageNo() == 0) {
			pageVo.setPageNo(page);
			;
		}

		totalCnt = boardService.selectBoardCnt(boardTypeList);

		boardList = boardService.selectBoardListByType(boardTypeList);
		model.addAttribute("commonCodeList",commonCodeList);
		model.addAttribute("boardList", boardList);
		model.addAttribute("totalCnt", totalCnt);
		model.addAttribute("pageNo", page);

		return "board/boardList";
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
	
	
	
	@RequestMapping(value = "/board/{boardType}/{boardNum}/boardView.do", method = RequestMethod.GET)
	public String boardView(Locale locale, Model model, @PathVariable("boardType") String boardType,
			@PathVariable("boardNum") int boardNum) throws Exception {


		BoardVo board = boardService.selectBoard(boardType, boardNum);
		
		if(board == null) {
			model.addAttribute("response","error");
		}
		model.addAttribute("board", board);
		
		return "board/boardView";
	}

	@RequestMapping(value = "/board/boardWrite.do", method = RequestMethod.GET)
	public String boardWrite(Locale locale, Model model, PageVo pageVo) throws Exception {
		List<CommonCodeVo> commonCodeList = commonCodeService.selectCommonCodeList("menu");

		model.addAttribute("commonCodeList",commonCodeList);
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
		return null;
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
    public Map<String,String> mbtiPage(@RequestParam String commonCodeType) throws Exception{
    	Map<String,String> map = new HashMap<>();
    	try {	
    		List<CommonCodeVo> mbtiCommonCodeList = commonCodeService.selectCommonCodeList(commonCodeType);
        	List<String> mbtiTypeList = new ArrayList();
        	for (CommonCodeVo code : mbtiCommonCodeList) {
        		mbtiTypeList.add(code.getCodeName());
        	}
        	
        	List<BoardVo> questionBoards = boardService.selectBoardListByType(mbtiTypeList);
        	map.put("result","success");
        	map.put("data", CommonUtil.toJson(questionBoards));
        	
    	}catch(Exception e) {
    		map.put("result", "error");
    		map.put("errorMessage", e.getMessage());
    	}
    

    	return map;
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
    public  Map<String,String> mabtiJavaSubmit(@RequestBody List<Map<String,String>> params) throws Exception{
	// 내부반복으로 구현내용 자바버전 8 미만이라 지원안돼서 외부반복으로 다시 구현
    		/**
    		 * params = [
    		 * 		{
    		 * 			"checkedRadioValue" 	: "3",
    		 * 			"types"					: "EI",
    		 * 		}
    		 * ]
    		 * 
    		 */
    	
    	// 응답코드와 결과 문자열을 딕셔너리로 담을 맵
    	Map<String,String> map = new HashMap<>();
    	
    	
    	try {
    		//반복문 외부 변수
    		int pageSize = 4;
    		int questionsPerPage = params.size()/pageSize;
    		
    		char[] MBTI = new char[pageSize];

    		// 4개 페이지사이즈만큼 반복
    		for (int i=0; i<pageSize; i++) {

    			// 타입 : 점수 쌍으로 각 타입별 점수 카운팅할 맵 객체 초기화, 포문 블락안에 선언
    	        Map<Character, Integer> scoreMap = new HashMap<Character,Integer>();
    	        
    	        // 20/4 = 5번 반복
    			for(int j=0; j<questionsPerPage; j++) {
    				// 문항 번호로 유저 인풋 맵 가져옴
    				Map<String, String> userInput = params.get(i*questionsPerPage+j); 
    				
    				// {"EI","PJ" 등}
        			String types = userInput.get("types");
        			
        			// 'E'
        			char type1 = types.charAt(0);
        			// 'I'
        			char type2 = types.charAt(1);
        			
        			// 스코어맵에 엔트리 초기화안됐을시 초기화
        			if(!scoreMap.containsKey(type1)) {
        				scoreMap.put(type1, 0);
        			}
        			if(!scoreMap.containsKey(type2)) {
        				scoreMap.put(type2, 0);
        			}
					// 유저가 입력한 라디오 밸류 {1~7}
        			int checkedRadioValue = Integer.parseInt(userInput.get("checkedRadioValue"));
        			
        			// 라디오밸류값 점수로 환산하여 누산할 스코어 변수 선언 
        			int addScore=0;
        			// 긍정응답 또는 부정응답에 따라 누산할 타입용 변수 선언
        			char addType=type1;
        			
        			//라디오밸류 각 분기별로 변수에 값 할당 
        			if(checkedRadioValue == 1) {
        				addType = type1;
        				addScore = 3;
        			}else if (checkedRadioValue == 2 ) {
        				addType = type1;
        				addScore = 2;
        			}else if (checkedRadioValue == 3 ) {
        				addType = type1;
        				addScore = 1;
        			}else if (checkedRadioValue == 4 ) {
        				addType = type1;
        				addScore = 0;
        			}else if (checkedRadioValue == 5 ) {
        				addType = type2;
        				addScore = 1;
        			}else if (checkedRadioValue == 6 ) {
        				addType = type2;
        				addScore = 2;
        			}else if (checkedRadioValue == 7 ) {
        				addType = type2;
        				addScore = 3;
        			}
        			
        			// 스코어맵에 누산 반영
        			scoreMap.put(addType, scoreMap.get(addType)+addScore);
    			}
    			
    			//맵엔트리값 반복돌리는동안 값 담아놓을 어레이
    			// [아스키코드][환산점수]
    			// [69][6] 
    			// [73][3] 이런식
    			int[][] mapArr = new int[scoreMap.size()][2];
    			
    			// 맵엔트리
    			int index=0;
    			
    			for(Map.Entry<Character, Integer> typeAndScore : scoreMap.entrySet()) {
    				mapArr[index][0]=typeAndScore.getKey();
    				mapArr[index++][1]=typeAndScore.getValue();
    			}
    			
    			char type1= (char)mapArr[0][0];
    			char type2 = (char)mapArr[1][0];
    			
    			int score1 = mapArr[0][1];
    			int score2 = mapArr[1][1];
    			
    			// 점수 비교후 동점일시 아스키코드 비교
    			if(score1 > score2) {
    				MBTI[i]=type1;
    			}else if(score1 < score2) {
    				MBTI[i]=type2;
    			}else if (score1 ==  score2) {
    				MBTI[i]=type1<type2 ? type1 : type2;
    			}
    			
    		}
    		map.put("result", "success");
    		map.put("data", new String(MBTI));
    	}catch(Exception e) {
    		map.put("result","error");
    		map.put("errorMessage",e.getMessage());
    	}
 
    	return map;
    	}
    	
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
