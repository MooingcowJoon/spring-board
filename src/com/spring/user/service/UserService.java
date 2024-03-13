package com.spring.user.service;

import com.spring.user.vo.UserVo;

public interface UserService {
	public UserVo 	selectUser(String userId) throws Exception;
	public int 		insertUser(UserVo userVo) throws Exception;
}
