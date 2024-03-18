package com.spring.recruit.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RecruitController {

	
	@RequestMapping(value="/recruit/main.do",method = RequestMethod.GET)
	public String main(Locale locale,Model model
							,@RequestParam String name
							,@RequestParam String phone) {
		model.addAttribute("name",name);
		model.addAttribute("phone",phone);
		
		return "recruit/main";
	}
	
	@RequestMapping(value="/recruit/login.do",method = RequestMethod.GET)
	public String login(Locale locale,Model model) {
		return "recruit/login";
	}
	
	
}
