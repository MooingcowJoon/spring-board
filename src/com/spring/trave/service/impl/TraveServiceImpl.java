package com.spring.trave.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.swing.event.ListSelectionEvent;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.common.CommonUtil;
import com.spring.trave.dao.TraveDao;
import com.spring.trave.service.TraveService;
import com.spring.trave.vo.ClientVo;
import com.spring.trave.vo.TraveVo;

@Service
public class TraveServiceImpl implements TraveService{
	@Autowired
	TraveDao traveDao;
	
	@Override
	public int updateClientTraveList(ClientVo clientVo) {
		return traveDao.updateClientTraveList(clientVo);
	}
	@Override
	public int insertClient(ClientVo clientVo) {
		return traveDao.insertClient(clientVo);
	}
	
	@Override
	public List<ClientVo> getClientList() {
		return traveDao.selectClientList();
	}
	
	@Override
	public ClientVo getClientBySeq(String seq) {
		ClientVo c = traveDao.selectClientBySeq(seq);
		List<TraveVo> traveList = c.getTraveList();
		if(traveList.get(0).getTraveSeq()==null) {
			traveList.clear();
		}
		List<List<TraveVo>> traveDays = new ArrayList<>();
		
		for(int i=0; i<Integer.parseInt(c.getPeriod()); i++){
			traveDays.add(new ArrayList<TraveVo>());
		}
		for(TraveVo trave : traveList) {
		int day = Integer.parseInt(trave.getTraveDay())-1;
		traveDays.get(day).add(trave);
		}
		c.setTraveDays(traveDays);
		return c;
	}
	
	@Override
	public int insertOrUpdateTrave(ClientVo clientVo) {
		return traveDao.insertOrUpdateTrave(clientVo);
	}
	@Override
	public Map<String, List<String>> getTraveCities() {
        // 여행지와 지역구를 저장할 Map 생성
        Map<String, List<String>> travelCities = new LinkedHashMap<>();

        // 서울의 지역구 목록
        String[] seoulDistricts = {"종로구", "강남구", "송파구", "서대문구", "영등포구", "마포구"};
        travelCities.put("서울", Arrays.asList(seoulDistricts));

        // 제주의 지역구 목록
        String[] jejuDistricts = {"제주시", "서귀포시", "한림읍", "애월읍", "성산읍", "조천읍"};
        travelCities.put("제주", Arrays.asList(jejuDistricts));

        // 경주의 지역구 목록
        String[] gyeongjuDistricts = {"중구", "서구", "남구", "북구", "동구"};
        travelCities.put("경주", Arrays.asList(gyeongjuDistricts));

        // 부산의 지역구 목록
        String[] busanDistricts = {"해운대구", "수영구", "부산진구", "동래구", "서구", "사하구"};
        travelCities.put("부산", Arrays.asList(busanDistricts));

        // 강원의 지역구 목록
        String[] gangwonDistricts = {"춘천시", "원주시", "강릉시", "속초시", "동해시", "태백시"};
        travelCities.put("강원", Arrays.asList(gangwonDistricts));

        // 전주를 전라도에 추가
        String[] jeonjuDistricts = {"완산구", "덕진구"};
        travelCities.put("전주", Arrays.asList(jeonjuDistricts));

		return travelCities;
	}
}
