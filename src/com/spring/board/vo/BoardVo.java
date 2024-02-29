package com.spring.board.vo;


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
	
	public BoardVo() {
	}
	public BoardVo(String boardType, String boardTitle, String boardComment) {
		super();
		this.boardType=boardType;
		this.boardTitle= boardTitle;
		this.boardComment = boardComment;
	}
	
	public BoardVo(String boardType, int boardNum, String boardTitle, String boardComment, String creator,
			String modifier, int totalCnt, String createTime, String modifiedTime) {
		super();
		this.boardType = boardType;
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardComment = boardComment;
		this.creator = creator;
		this.modifier = modifier;
		this.totalCnt = totalCnt;
		this.createTime = createTime;
		this.modifiedTime = modifiedTime;
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
