package com.spring.trave.dao;

import java.util.List;

import com.spring.trave.vo.ClientVo;

public interface TraveDao {

	public int insertClient(ClientVo clientVo);
	public List<ClientVo> selectClientList();
	public int insertOrUpdateTrave(ClientVo clientVo);
}
