package com.spring.user.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;
import com.spring.user.service.UserService;
import com.spring.user.vo.UserVo;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
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
			int result = userService.insertUser(userVo);
			if(result > 0) {
				map.put("result","success");
				HttpSession session = request.getSession();
				session.setAttribute("userId", userVo.getId());
				session.setAttribute("userName", userVo.getName());
			}else {
				map.put("result","error");
			}
			
			 }catch (Exception e) { map.put("result","error"); }
			 
		return map;
	}
	
	
	@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
	public String joinPage(Locale locale, Model model) throws Exception{
		
		return "user/join";
	}
	@RequestMapping(value = "/user/login.do", method = RequestMethod.GET)
	public String loginPage(Locale locale, Model model) throws Exception{
		
		return "user/login";
	}
	
}
