package com.spring.board.service;

import java.util.List;

import com.spring.board.vo.BoardVo;
import com.spring.board.vo.PageVo;

public interface boardService {

	public String selectTest() throws Exception;
//	public List<BoardVo> SelectBoardList(PageVo pageVo) throws Exception;
	
	public List<BoardVo> selectBoardListByType(List<String> boardTypeList) throws Exception;

	public BoardVo selectBoard(String boardType, int boardNum) throws Exception;

	public int selectBoardCnt(List<String> boardTypeList) throws Exception;

	public int boardInsert(List<BoardVo> boardVos) throws Exception;

	public int boardUpdate(BoardVo boardVo) throws Exception;
	
	public int boardDelete(BoardVo boardVo) throws Exception;
}
