package com.spring.user.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.user.dao.UserDao;
import com.spring.user.vo.UserVo;
@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public UserVo selectUser(String userId) throws Exception {
		return sqlSession.selectOne("user.userById",userId);
	}
	
	@Override
	public int insertUser(UserVo userVo) throws Exception {
		return sqlSession.insert("user.insertUser", userVo);
	}
}
