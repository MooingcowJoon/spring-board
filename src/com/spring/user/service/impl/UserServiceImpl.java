package com.spring.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.user.dao.UserDao;
import com.spring.user.service.UserService;
import com.spring.user.vo.UserVo;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDao userDao;
	
	
	@Override
	public UserVo selectUser(String userId) throws Exception {
		return userDao.selectUser(userId);
	}
	
	@Override
	public int insertUser(UserVo userVo) throws Exception {
		return userDao.insertUser(userVo);
	}

}
