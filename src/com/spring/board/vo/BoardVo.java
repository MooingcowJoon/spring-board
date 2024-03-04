package com.spring.board.vo;

import java.util.List;


public class BoardVo {
	
	private String 	boardType;
	private int 	boardNum;
	private String 	boardTitle;
	private String 	boardComment;
	private String 	creator;
	private String	modifier;
	private int totalCnt;
	private String createTime;
	private String modifiedTime;
	
    private List<BoardVo> boardList;

    // 생성자, 게터, 세터 등 필요한 메서드를 추가할 수 있음

    public List<BoardVo> getBoardList() {
        return boardList;
    }

    public void setBoardList(List<BoardVo> boardList) {
        this.boardList = boardList;
    }
	
	/*
	 * // 리스트로받기 private List<BoardVo> boardVoList;
	 */
	
	/*
	 * public List<BoardVo> getBoardVoList() { return boardVoList; } public void
	 * setBoardVoList(List<BoardVo> boardVoList) { this.boardVoList = boardVoList; }
	 */
	public BoardVo() {
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardComment() {
		return boardComment;
	}
	public void setBoardComment(String boardComment) {
		this.boardComment = boardComment;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public String getModifier() {
		return modifier;
	}
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getModifiedTime() {
		return modifiedTime;
	}
	public void setModifiedTime(String modifiedTime) {
		this.modifiedTime = modifiedTime;
	}

	
	
}
