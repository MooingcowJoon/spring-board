package com.spring.trave.controller;

import java.util.List;
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
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;

@Controller
public class TraveController {
	@Autowired
	private CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private TraveService traveService;
	
	
	
	@RequestMapping(value = "/trave/practice.do", method = RequestMethod.GET)
	public String practice(Locale locale,Model model) throws Exception{
		List<ClientVo> clientList = traveService.getClientList();
		
		model.addAttribute("clientList",clientList);
		return "trave/practice";
	}
	@RequestMapping(value = "/trave/manage.do", method = RequestMethod.GET)
	public String manage(Locale locale,Model model) throws Exception{
		List<ClientVo> clientList = traveService.getClientList();
		
		model.addAttribute("clientList",clientList);
		return "trave/manage";
	}
	@RequestMapping(value = "/trave/view.do", method = RequestMethod.GET)
	public String view(Locale locale,Model model
			,@RequestParam String seq) throws Exception{
		model.addAttribute("c",traveService.getClientBySeq(seq));
		return "trave/view";
	}
	
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
