package com.spring.trave.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;

@Controller
public class TraveController {
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/trave/login.do")
	public String login(Locale locale) throws Exception{
		return "trave/login";
	}
}
