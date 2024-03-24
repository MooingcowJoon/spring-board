package com.spring.recruit.service;

import com.spring.recruit.vo.RecruitVo;

public interface RecruitService {

	public RecruitVo selectRecruit(RecruitVo recruitVo);
	public int insertOrUpdateRecruit(RecruitVo recruitVo);
}
