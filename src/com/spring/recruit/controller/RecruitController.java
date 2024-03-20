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
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.recruit.service.RecruitService;
import com.spring.recruit.vo.RecruitVo;

@Controller
public class RecruitController {

	@Autowired
	RecruitService recruitService;
	
	@RequestMapping(value="/recruit/main.do",method = RequestMethod.GET)
	public String main(Locale locale,Model model
							,@RequestParam String name
							,@RequestParam String phone) {
		RecruitVo paramRecruitVo = new RecruitVo();
		paramRecruitVo.setName(name);
		paramRecruitVo.setPhone(phone);
		RecruitVo recruitVo = recruitService.selectRecruit(paramRecruitVo);
		
		if(recruitVo == null) {
			recruitVo = paramRecruitVo;
		}
		
		model.addAttribute("r",recruitVo);
		model.addAttribute("e",recruitVo.getEducationList());
		model.addAttribute("c",recruitVo.getCareerList());
		model.addAttribute("f",recruitVo.getCertificateList());
		
		return "recruit/main";
	}
	
	@RequestMapping(value="/recruit/login.do",method = RequestMethod.GET)
	public String login(Locale locale,Model model) {
		return "recruit/login";
	}
	
	
}
