package com.spring.trave.vo;

import java.util.ArrayList;
import java.util.List;

public class ClientVo {

	private String seq;
	private String userName;
	private String userPhone;
	private String traveCity;
	private String period;
	private String expend;
	private String rentExpend;
	private String estExpend;
	private String transport;
	private String isRequested;
	private List<TraveVo> traveList;
	private List<List<TraveVo>> traveDays;
	
	
	public String getIsRequested() {
		return isRequested;
	}

	public void setIsRequested(String isRequested) {
		this.isRequested = isRequested;
	}

	public String getRentExpend() {
		return rentExpend;
	}

	public void setRentExpend(String rentExpend) {
		this.rentExpend = rentExpend;
	}
	
	public String getEstExpend() {
		return estExpend;
	}

	public void setEstExpend(String estExpend) {
		this.estExpend = estExpend;
	}
	public List<List<TraveVo>> getTraveDays() {
		return traveDays;
	}

	public void setTraveDays(List<List<TraveVo>> traveDays) {
		this.traveDays = traveDays;
	}

	public ClientVo() {}
	public ClientVo(String userName, String userPhone) {
		this.userName=userName;
		this.userPhone=userPhone;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getTraveCity() {
		return traveCity;
	}

	public void setTraveCity(String traveCity) {
		this.traveCity = traveCity;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getExpend() {
		return expend;
	}

	public void setExpend(String expend) {
		this.expend = expend;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

	public List<TraveVo> getTraveList() {
		return traveList;
	}

	public void setTraveList(List<TraveVo> traveList) {
		this.traveList = traveList;
	}
	
	
}
