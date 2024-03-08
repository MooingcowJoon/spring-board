package com.spring.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.board.dao.CommonCodeDao;
import com.spring.board.vo.common.CommonCodeVo;

@Repository
public class CommonCodeDaoImpl implements CommonCodeDao {
    @Autowired
    private SqlSession sqlSession;
    @Override
    public List<CommonCodeVo> selectCommonCodeList(String codeType) throws Exception {
        return sqlSession.selectList("common.commonCodeList",codeType);
    }
}
