package com.spring.trave.service;

import java.util.List;

import com.spring.trave.vo.ClientVo;

public interface TraveService {

	public int insertClient(ClientVo clientVo);
	public List<ClientVo> getClientList();
	public ClientVo getClientBySeq(String seq);
	public int insertOrUpdateTrave(ClientVo clientVo);
}
