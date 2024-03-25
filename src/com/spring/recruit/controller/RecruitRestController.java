package com.spring.recruit.controller;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
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
import com.spring.recruit.vo.CareerVo;
import com.spring.recruit.vo.CertificateVo;
import com.spring.recruit.vo.EducationVo;
import com.spring.recruit.vo.RecruitVo;

@Controller
public class RecruitRestController {
	@Autowired
	RecruitService recruitService;
	
	@RequestMapping(value="/api/recruit/main/submit.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> submit(Locale locale, @RequestBody RecruitVo recruitVo) throws Exception{
		Map<String,String> map = new HashMap<>();
		try {
			map.put("code", "redirect");
			List<EducationVo> eduList = recruitVo.getEducationList();
			List<CareerVo> carList = recruitVo.getCareerList();
			List<CertificateVo> certList = recruitVo.getCertificateList();
			eduList.sort(new Comparator<EducationVo>(){
					@Override
					public int compare(EducationVo o1, EducationVo o2) {
						return Integer.parseInt(o2.getStartPeriod().replace(".", ""))
								- Integer.parseInt(o1.getStartPeriod().replace(".", ""));
					}
			});
			carList.sort(new Comparator<CareerVo>(){
				@Override
				public int compare(CareerVo o1, CareerVo o2) {
					return Integer.parseInt(o2.getStartPeriod().replace(".", ""))
							- Integer.parseInt(o1.getStartPeriod().replace(".", ""));
				}
			});
			
			certList.sort(new Comparator<CertificateVo>(){
				@Override
				public int compare(CertificateVo o1, CertificateVo o2) {
					return Integer.parseInt(o2.getAcquDate().replace(".", ""))
							- Integer.parseInt(o1.getAcquDate().replace(".", ""));
				}
			});
			
			
			int index = eduList.size()-1;
			for(EducationVo edu: eduList) {
				edu.setEduSeq(String.valueOf(index--));
			}
			
			index = carList.size()-1;
			for(CareerVo car: carList) {
				car.setCarSeq(String.valueOf(index--));
			}
			
			index = certList.size()-1;
			for(CertificateVo cert: certList) {
				cert.setCertSeq(String.valueOf(index--));
			}
			
			recruitService.insertOrUpdateRecruit(recruitVo);
			
			map.put("msg",CommonUtil.toJson(recruitVo));
			map.put("result", "success");
		}catch(Exception e) {
			map.put("result", "error");
			map.put("code", "serverError");
			map.put("msg", "서버 장애가 발생하였습니다.");
			e.printStackTrace();
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
