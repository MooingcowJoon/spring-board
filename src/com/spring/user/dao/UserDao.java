package com.spring.user.dao;

import com.spring.user.vo.UserVo;

public interface UserDao {
	public UserVo selectUser(String userId) throws Exception;
	public int insertUser(UserVo userVo) throws Exception;
}
