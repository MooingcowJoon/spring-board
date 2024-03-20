package com.spring.recruit.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.common.CommonUtil;
import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.RecruitVo;

@Controller
public class RecruitRestController {
	
	@Autowired
	RecruitService recruitService;
	
	@RequestMapping(value="/api/recruit/main/submit.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> submit(Locale locale, @RequestBody RecruitVo recruitVo) throws Exception{
		Map<String,String> map = new HashMap<>();
		System.out.println(CommonUtil.toJson(recruitVo));
		try {
			map.put("code", "redirect");
			recruitService.insertRecruit(recruitVo);
			
			map.put("msg",CommonUtil.toJson(recruitVo));
			map.put("result", "success");
		}catch(Exception e) {
			map.put("result", "error");
			map.put("code", "serverError");
			map.put("msg", "서버 장애가 발생하였습니다.");
			System.out.println(e.getMessage());
		}
		return map;
	}
	
	@RequestMapping(value="/api/recruit/login.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> login(Locale locale,Model model, @RequestBody Map<String,String> param) throws Exception {
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
