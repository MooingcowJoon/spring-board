package com.spring.recruit.vo;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class Summary {

	private String highestDegree;
	private String careerHistory; 
	private String preferredSalary;
	private String preferredWorkType;
	private String preferredLocation;
	
	public Summary(){}
	public Summary(RecruitVo recruit) {
		List<EducationVo> eduList = recruit.getEducationList();
		List<CareerVo> carList = recruit.getCareerList();
		
		Map<String,EducationVo> map = new LinkedHashMap<>();
		map.put("대학원", null);
		map.put("대학",null);
		map.put("고등학교",null);
		map.put("중학교",null);
		
		for (EducationVo edu : eduList) {
			for(String degree : map.keySet()) {
				if(edu.getSchoolName().contains(degree)) {
					map.put(degree, edu);
				}
			}
		}
		
		for(Entry<String,EducationVo> e : map.entrySet()) {
			if(e.getValue() != null) {
				EducationVo edu = e.getValue();
				
				
				this.highestDegree = e.getKey()+" "+edu.getDivision();
				if(edu.getSchoolName().contains("대학")) {
					String[] start = edu.getStartPeriod().split("\\.");
					
					String[] end = edu.getEndPeriod().split("\\.");
					
					int y = Integer.parseInt(end[0])-Integer.parseInt(start[0]);
					int m = Integer.parseInt(end[1])-Integer.parseInt(start[1]);
					
					y-=m/12;
					if(y>3) {
						this.highestDegree = e.getKey()+"(4년) "+edu.getDivision();
					}else if(y==3) {
						this.highestDegree = e.getKey()+"(3년) "+edu.getDivision();
					}else if(y==2) {
						this.highestDegree = e.getKey()+"(2년) "+edu.getDivision();
					}else {
						this.highestDegree = e.getKey()+"(기타) "+edu.getDivision();
					}
				}
				
				
				break;
			}
		}
		int y=0;
		int m=0;
		String carHistory;
		
		boolean flag= false;
		for(CareerVo car : carList) {
			if(car.getStartPeriod() == null) {
				flag=true;
				break;
			}
			String[] start = car.getStartPeriod().split("\\.");
			if(start.length<2) {
				flag=true;
				break;
			}
			String[] end = car.getEndPeriod().split("\\.");
			y+= Integer.parseInt(end[0])-Integer.parseInt(start[0]);
			m+= Integer.parseInt(end[1])-Integer.parseInt(start[1]);
		}
		y+=m/12;
		m=m/12;
		if(flag) {
			carHistory="경력사항 없음";
		}else{
			carHistory= "경력 "+y+"년 "+m+"개월";
		}
		this.careerHistory=carHistory;
		
		
		this.preferredSalary="회사내규에 따름";
		this.preferredLocation=recruit.getLocation()+" 전체";
		this.preferredWorkType= recruit.getWorkType();
	}

	public String getHighestDegree() {
		return highestDegree;
	}

	public void setHighestDegree(String highestDegree) {
		this.highestDegree = highestDegree;
	}

	public String getCareerHistory() {
		return careerHistory;
	}

	public void setCareerHistory(String careerHistory) {
		this.careerHistory = careerHistory;
	}

	public String getPreferredSalary() {
		return preferredSalary;
	}

	public void setPreferredSalary(String preferredSalary) {
		this.preferredSalary = preferredSalary;
	}

	

	public String getPreferredWorkType() {
		return preferredWorkType;
	}

	public void setPreferredWorkType(String preferredWorkType) {
		this.preferredWorkType = preferredWorkType;
	}

	public String getPreferredLocation() {
		return preferredLocation;
	}

	public void setPreferredLocation(String preferredLocation) {
		this.preferredLocation = preferredLocation;
	}


}
