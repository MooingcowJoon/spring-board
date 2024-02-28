package com.spring.board.vo;

public class PageVo {
	
	private int pageNo;

	// 게시물당 페이지 수 (기본 5)
	private int pageSize;
	
	private int totalCnt;
	
	private int totalPages;
	
	private int startRow;
	
	private int endRow;
	
	
	public PageVo() {
	}
	
	public int getPageNo() {
		return pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public void setPageNo(int pageNo) {
		this.pageNo=pageNo;
	}
}	
