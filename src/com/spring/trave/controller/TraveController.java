package com.spring.trave.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;

@Controller
public class TraveController {
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/trave/inquiry.do", method = RequestMethod.GET)
	public String inquiry(Locale locale,Model model
										,@RequestParam String userName
										,@RequestParam String userPhone) throws Exception{
		model.addAttribute("userName", userName);
		model.addAttribute("userPhone", userPhone);
		return "trave/inquiry";
	}
	@RequestMapping(value = "/trave/login.do", method = RequestMethod.GET)
	public String login(Locale locale) throws Exception{
		return "trave/login";
	}
}
