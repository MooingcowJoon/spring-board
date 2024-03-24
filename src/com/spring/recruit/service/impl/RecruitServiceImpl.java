package com.spring.recruit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.recruit.dao.RecruitDao;
import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.RecruitVo;

@Service
public class RecruitServiceImpl implements RecruitService {
	
	@Autowired
	RecruitDao recruitDao;
	
	@Override
	public int insertOrUpdateRecruit(RecruitVo recruitVo) {
		return recruitDao.insertOrUpdateRecruit(recruitVo);
	}
	
	@Override
	public RecruitVo selectRecruit(RecruitVo recruitVo) {
		return recruitDao.selectRecruit(recruitVo);
	}
}
