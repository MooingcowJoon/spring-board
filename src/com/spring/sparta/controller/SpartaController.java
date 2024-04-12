package com.spring.sparta.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SpartaController {
	@RequestMapping(value="/sparta/board/qna/view.do",method = RequestMethod.GET)
	public String boardQnaView(Locale locale,Model model) {
		return "sparta/board/qna/view";
	}
	@RequestMapping(value="/sparta/board/free/view.do",method = RequestMethod.GET)
	public String boardFreeView(Locale locale,Model model) {
		return "sparta/board/free/view";
	}
	
	@RequestMapping(value="/sparta/board/qna/list.do",method = RequestMethod.GET)
	public String boardQnaList(Locale locale,Model model) {
		return "sparta/board/qna/list";
	}
	
	@RequestMapping(value="/sparta/board/free/list.do",method = RequestMethod.GET)
	public String boardFreeList(Locale locale,Model model) {
		return "sparta/board/free/list";
	}
	
	@RequestMapping(value="/sparta/product/{pno}/enroll.do",method = RequestMethod.GET)
	public String productEnroll(Locale locale,@PathVariable String pno,Model model) {
		return "sparta/product/enroll";
	}
	@RequestMapping(value="/sparta/product/{pno}/view.do",method = RequestMethod.GET)
	public String productView(Locale locale,@PathVariable String pno,Model model) {
		return "sparta/product/view/"+pno;
	}
	@RequestMapping(value="/sparta/product/list.do",method = RequestMethod.GET)
	public String productList(Locale locale,Model model) {
		return "sparta/product/list";
	}
	
	
	
	
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
