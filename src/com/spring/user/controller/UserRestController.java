package com.spring.user.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.service.CommonCodeService;
import com.spring.user.service.UserService;
import com.spring.user.vo.UserVo;

@Controller
public class UserRestController {
	@Autowired
	UserService userService;
	
	@Autowired
	CommonCodeService commonCodeService;
	
	
	
	
	@RequestMapping(value = "/api/user/logout.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,String> logoutUser(HttpSession session, Locale locale) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			map.put("result","success");
			session.removeAttribute("user");
		}catch (Exception e) {
			map.put("result", "error");
		}
		return map;
	}
	
	@RequestMapping(value = "/api/user/authenticateUser.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> authenticateUser(HttpSession session, Locale locale, @RequestBody UserVo inputUserVo) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			UserVo dbUserVo = userService.selectUser(inputUserVo.getId());
			map.put("result","success");
			if(dbUserVo == null) {
				map.put("login","idNotFound");
			}else {
				if(dbUserVo.getPw().equals(inputUserVo.getPw())) {
					map.put("login", "success");
					dbUserVo.setPw("");
					session.setAttribute("user", dbUserVo);
				}else {
					map.put("login","incorrectPw");
				}
			}
		}catch (Exception e) {
			map.put("result", "error");
		}
		return map;
	}
	
	@RequestMapping(value = "/api/user/join/duplicateCheck.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,String> joinDuplicateCheck(Locale locale, @RequestParam String userId) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			UserVo userVo = userService.selectUser(userId);
			if(userVo == null) {
				map.put("isDuplicate", "false");
			}else {
				map.put("isDuplicate", "true");
			}
			
			map.put("result","success");
		}catch (Exception e) {
			map.put("result", "error");
		}
		return map;
	}
	
	
	@RequestMapping(value = "/api/user/join/submit.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> join(HttpServletRequest request, Locale locale,@RequestBody UserVo userVo ) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			UserVo oldUserVo = userService.selectUser(userVo.getId());
			
			if(oldUserVo != null) {
				map.put("result","error");
				map.put("errorCode", "duplicateId");
				return map;
			}
			
			int result = userService.insertUser(userVo);
			if(result > 0) {
				map.put("result","success");
				/*
				 * HttpSession session = request.getSession(); session.setAttribute("userId",
				 * userVo.getId()); session.setAttribute("userName", userVo.getName());
				 */
			}else {
				map.put("result","error");
			}
			
			 }catch (Exception e) { map.put("result","error"); }
			 
		return map;
	}
}
