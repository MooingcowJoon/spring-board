package com.spring.trave.service;

import java.util.List;
import java.util.Map;

import com.spring.trave.dto.ModifyRequestDto;
import com.spring.trave.vo.ClientVo;

public interface TraveService {
	public int modifyRequest(ModifyRequestDto dto);
	public ClientVo getClient(ClientVo clientVo);
	public int updateClientTraveList(ClientVo clientVo);
	public int insertClient(ClientVo clientVo);
	public List<ClientVo> getClientList();
	public ClientVo getClientBySeq(String seq);
	public Map<String,List<String>> getTraveCities();
}
