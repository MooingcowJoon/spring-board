package com.spring.recruit.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RecruitRestController {
	
	@RequestMapping(value="/api/recruit/login.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> login(Locale locale,Model model, @RequestBody Map<String,String> param) {
		Map<String,String> map = new HashMap<>();
		try {
			map.put("code", "redirect");
			map.put("redirectUrl","/recruit/main.do?name="+param.get("name")+"&phone="+param.get("phone"));
			map.put("result", "success");
		}catch(Exception e) {
			map.put("result", "error");
			map.put("code", "serverError");
			map.put("msg", "서버 장애가 발생하였습니다.");
		}
		return map;
	}
}
