package com.spring.recruit.dao;

import com.spring.recruit.vo.RecruitVo;

public interface RecruitDao {

	public RecruitVo selectRecruit(RecruitVo recruitVo);
	public int insertOrUpdateRecruit(RecruitVo recruitVo);
}
