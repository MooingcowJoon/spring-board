package com.spring.trave.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.HomeController;
import com.spring.board.service.CommonCodeService;
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;

@Controller
public class TraveRestController {
	
	@Autowired
	CommonCodeService commonCodeService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	TraveService traveService;
	
	
	@RequestMapping(value= "/api/trave/inquiry/submit.do",method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> submitInquiry(Locale locale,@RequestBody ClientVo clientVo) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
		logger.info(clientVo.toString());
			map.put("code", "redirect");
			traveService.insertClient(clientVo);
			map.put("redirectUrl","/trave/view?seq="+clientVo.getSeq());
			map.put("result", "success");
		}catch(Exception e) {
			map.put("result", "error");
			map.put("code", "serverError");
			map.put("msg", "서버 장애가 발생하였습니다.");
		}
		return map;
	}
	
}
