package com.spring.trave.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.trave.dao.TraveDao;
import com.spring.trave.dto.ModifyRequestDto;
import com.spring.trave.vo.ClientVo;

@Repository
public class TraveDaoImpl implements TraveDao {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int modifyRequest(ModifyRequestDto dto) {
		return sqlSession.update("modifyRequest", dto);
	}
	@Override
	public ClientVo selectClient(ClientVo clientVo) {
		return sqlSession.selectOne("selectClient", clientVo);
	}
	@Override
	public int updateClientTraveList(ClientVo clientVo) {
		return sqlSession.insert("trave.updateClientTraveList",clientVo);
	}
	@Override
	public int insertClient(ClientVo clientVo) {
		return sqlSession.insert("trave.insertClient",clientVo);
	}
	@Override
	public ClientVo selectClientBySeq(String seq) {
		return sqlSession.selectOne("selectClientBySeq", seq);
	}
	@Override
	public List<ClientVo> selectClientList() {
		return sqlSession.selectList("trave.selectClientList");
	}
	@Override
	public int insertOrUpdateTrave(ClientVo clientVo) {
		return sqlSession.insert("trave.insertOrUpdateClient",clientVo);
	}
}
