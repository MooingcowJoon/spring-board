package com.spring.trave.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.trave.dao.TraveDao;
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;

@Service
public class TraveServiceImpl implements TraveService{
	@Autowired
	TraveDao traveDao;
	
	
	@Override
	public int insertClient(ClientVo clientVo) {
		return traveDao.insertClient(clientVo);
	}
	
	@Override
	public List<ClientVo> getClientList() {
		return traveDao.selectClientList();
	}
	
	@Override
	public ClientVo getClientBySeq(String seq) {
		return traveDao.selectClientBySeq(seq);
	}
	
	@Override
	public int insertOrUpdateTrave(ClientVo clientVo) {
		return traveDao.insertOrUpdateTrave(clientVo);
	}
	
}
