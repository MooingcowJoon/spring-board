package com.spring.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import com.spring.board.vo.common.CommonCodeVo;
import com.spring.user.service.UserService;
import com.spring.user.vo.UserVo;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/user/login.do", method = RequestMethod.GET)
	public String loginPage(Locale locale, Model model) throws Exception{
		
		return "user/login";
	}
	
	@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
	public String joinPage(Locale locale, Model model) throws Exception{
		List<CommonCodeVo> phoneCommonCodeVos = commonCodeService.selectCommonCodeList("phone");
		List<String> phoneNos = new ArrayList<>();
		
		for(CommonCodeVo code : phoneCommonCodeVos){
			phoneNos.add(code.getCodeName());
		}
		
		
		model.addAttribute("phoneNos",phoneNos);
		return "user/join";
	}
	
}
