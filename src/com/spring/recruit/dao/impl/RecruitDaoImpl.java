package com.spring.recruit.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.recruit.dao.RecruitDao;
import com.spring.recruit.vo.RecruitVo;

@Repository
public class RecruitDaoImpl implements RecruitDao{
		
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertRecruit(RecruitVo recruitVo) {
		return sqlSession.insert("recruit.insertRecruit",recruitVo);
	}
	@Override
	public RecruitVo selectRecruit(RecruitVo recruitVo) {
		// TODO Auto-generated method stub
		return null;
	}
}
