package com.spring.sparta.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SpartaController {
	@RequestMapping(value="/sparta/common.do",method = RequestMethod.GET)
	public String common(Locale locale,Model model) {
		return "sparta/common/common";
	}
	@RequestMapping(value="/sparta/layout.do",method = RequestMethod.GET)
	public String layout(Locale locale,Model model) {
		return "sparta/layout";
	}
	@RequestMapping(value="/sparta/catalog.do",method = RequestMethod.GET)
	public String catalog(Locale locale,Model model) {
		return "sparta/catalog";
	}

	@RequestMapping(value="/sparta/index2.do",method = RequestMethod.GET)
	public String index2(Locale locale,Model model) {
		return "sparta/index2";
	}
	@RequestMapping(value="/sparta/index.do",method = RequestMethod.GET)
	public String login(Locale locale,Model model) {
		return "sparta/index";
	}
}
