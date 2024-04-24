package com.spring.trave.dto;

import java.util.List;

public class ModifyRequestDto {

	private String seq;
	private List<String> traveSeqList;
	public ModifyRequestDto() {}
	

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public List<String> getTraveSeqList() {
		return traveSeqList;
	}
	public void setTraveSeqList(List<String> traveSeqList) {
		this.traveSeqList = traveSeqList;
	}
	
	
}
