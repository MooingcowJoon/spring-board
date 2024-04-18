package com.spring.trave.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.spring.trave.dao.TraveDao;
import com.spring.trave.vo.ClientVo;
import com.spring.trave.vo.TraveVo;

@Repository
public class TraveDaoImpl implements TraveDao {
	@Autowired
	SqlSession sqlSession;
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
