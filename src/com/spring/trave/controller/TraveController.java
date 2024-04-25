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
import com.spring.common.CommonUtil;
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;

@Controller
public class TraveController {
	@Autowired
	private CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private TraveService traveService;
	
	
	
	@RequestMapping(value = "/trave/time.do", method = RequestMethod.GET)
	public String practice(Locale locale,Model model) throws Exception{
		List<ClientVo> clientList = traveService.getClientList();
		
		model.addAttribute("clientList",clientList);
		return "trave/time";
	}
	@RequestMapping(value = "/trave/manage.do", method = RequestMethod.GET)
	public String manage(Locale locale,Model model
			,@RequestParam(required = false ,defaultValue ="1")  String paramSeq
			,@RequestParam(required = false ,defaultValue ="1") String paramDayNum) throws Exception{
		List<ClientVo> clientList = traveService.getClientList();
		
		model.addAttribute("clientList",clientList);
		model.addAttribute("paramSeq",paramSeq);
		model.addAttribute("paramDayNum",paramDayNum);
		return "trave/manage";
	}
	@RequestMapping(value = "/trave/view.do", method = RequestMethod.GET)
	public String view(Locale locale,Model model
			,@RequestParam String seq) throws Exception{
		ClientVo c = traveService.getClientBySeq(seq);
		int est = Integer.parseInt(c.getEstExpend().replaceAll(",",""));
		int rent = Integer.parseInt(c.getRentExpend().replaceAll(",",""));
		
		c.setEstExpend(String.format("%,d",est+rent));
		model.addAttribute("c",c);
		
		return "trave/view";
	}
	
	@RequestMapping(value = "/trave/inquiry.do", method = RequestMethod.GET)
	public String inquiry(Locale locale,Model model
										,@RequestParam String userName
										,@RequestParam String userPhone
										) throws Exception{
		ClientVo paramVo = traveService.getClient(new ClientVo(userName,userPhone));
		if(paramVo==null) {
			model.addAttribute("userName", userName);
			model.addAttribute("traveCities",traveService.getTraveCities().keySet());
			model.addAttribute("userPhone", userPhone);
			return "trave/inquiry";
		}
		int est = Integer.parseInt(paramVo.getEstExpend().replaceAll(",",""));
		int rent = Integer.parseInt(paramVo.getRentExpend().replaceAll(",",""));
		
		paramVo.setEstExpend(String.format("%,d",est+rent));
		model.addAttribute("c",paramVo);
		System.out.println(CommonUtil.toJson(paramVo.getTraveDays()));
		return "trave/view";
	}
	@RequestMapping(value = "/trave/login.do", method = RequestMethod.GET)
	public String login(Locale locale) throws Exception{
		return "trave/login";
	}
}
