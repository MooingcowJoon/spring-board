package com.spring.trave.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.event.ListSelectionEvent;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.common.CommonUtil;
import com.spring.trave.dao.TraveDao;
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;
import com.spring.trave.vo.TraveVo;

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
		ClientVo c = traveDao.selectClientBySeq(seq);
		List<TraveVo> traveList = c.getTraveList();
		if(traveList.get(0).getTraveSeq()==null) {
			traveList.clear();
		}
		List<List<TraveVo>> traveDays = new ArrayList<>();
		
		for(int i=0; i<Integer.parseInt(c.getPeriod()); i++){
			traveDays.add(new ArrayList<TraveVo>());
		}
		for(TraveVo trave : traveList) {
		int day = Integer.parseInt(trave.getTraveDay());
		traveDays.get(day).add(trave);
		}
		c.setTraveDays(traveDays);
		return c;
	}
	
	@Override
	public int insertOrUpdateTrave(ClientVo clientVo) {
		return traveDao.insertOrUpdateTrave(clientVo);
	}
	
}
