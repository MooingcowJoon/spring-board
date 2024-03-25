package com.spring.recruit.vo;

import java.util.ArrayList;
import java.util.Comparator;
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
		 
		// 최종학력 선택 알고리즘 정렬에 쓰일 School 내부클래스 선언
		class School {
			 int level;
			 int years;
			 int division;
			}
		 
		// School 리스트 초기화
		List<School> schools = new ArrayList<>();
		
		// 학력사항 엔티티에서 비교할 내용 인트로 환산해서 추출
		for (EducationVo edu : eduList) {
			School school = new School();
			String name = edu.getSchoolName();
			String division= edu.getDivision();
			if("졸업".equals(division)) {
				school.division=2;
			}else if("재학".equals(division)) {
				school.division=1;
			}if("중퇴".equals(division)) {
				school.division=0;
			}
			
			String[] start = edu.getStartPeriod().split("\\.");
			String[] end = edu.getEndPeriod().split("\\.");
			
			int y = Integer.parseInt(end[0])-Integer.parseInt(start[0]);
			int sm = Integer.parseInt(start[1]);
			int em = Integer.parseInt(end[1]);
			int m=0;
			if(em>=sm) {
				m = em-sm +1;
			}else if(em<sm) {
				m= (12-sm+1)+ em;
				y += m/12;
				m = m%12;
				y--;
			}
			int ySum= y+ m%12;
			
			
			school.years=ySum;
			
			if (name.contains("대학원")) {
				school.level=4;
			}else if(name.contains("대학")){
				school.level=3;	
			}else if(name.contains("고등")){
				school.level=2;	
			}else if(name.contains("중학")){
				school.level=1;	
			}else{
				school.level=0;
			}
			schools.add(school);
		}
		
		// Comparator 익명클래스에 비교로직 구현해서 정렬, 상위 학력이 앞으로감.
		schools.sort(new Comparator<School>() {
			// 둘 다 대학이상인 경우와 아닌경우로 나눔.
			// 하나만 대학 이상인 경우 중퇴여도 대학이상이 우위
			// 둘다 대학인 경우 레벨높은게 재학이면 레벨 순, 레벨높은게 중퇴면 졸업여부 순
			// 레벨, 졸업여부 같으면 재학연수 순
			// 학위취득 여부나 학위 레벨 등은 고려치 않음.
			public int compare(School o1, School o2) {
				if(o1.level >=3 && o2.level>=3) {
					if(o1.level==o2.level && o1.division == o2.division) {
						return o2.years - o1.years;
					}
					if(o1.level== o2.level) {
						return o2.division - o1.division;
					}
					if(o1.division >0 && o2.division>0) {
						return o2.level - o1.level;
					}
					if(o1.division == o2.division) {
						return o2.years-o1.years;
					}
					return o2.division-o1.division;
				}
				return o2.level-o1.level;
			}
		});	
			School school = schools.get(0);
			int s = school.division;
			String div = s==2? "졸업" :(s==1? "재학" : "중퇴");
			
			s=school.level;
			String lev;
			
			if (s==4) {
				lev="대학원";
			}
			else if(s==2) {
				lev="고등학교";
			}else if(s==1) {
				lev="중학교";
			}else lev = "기타";
			if(school.level == 3) {
				this.highestDegree="대학("+school.years+"년) "+div;
			}else this.highestDegree=lev+" "+div;
			
		int mSum=0;
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
			
			int y= Integer.parseInt(end[0])-Integer.parseInt(start[0]);
			int sm = Integer.parseInt(start[1]);
			int em = Integer.parseInt(end[1]);
			int m=0;
			if(em>=sm) {
				m = em-sm +1;
			}else if(em<sm) {
				m= (12-sm+1)+ em;
				y += m/12;
				m = m%12;
				y--;
			}
			mSum += y*12+m;
			
		}
		
		
		int y	= mSum/12;
		int m 	= mSum%12;
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
