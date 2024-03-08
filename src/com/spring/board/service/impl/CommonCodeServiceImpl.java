package com.spring.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.board.dao.CommonCodeDao;
import com.spring.board.service.CommonCodeService;
import com.spring.board.vo.common.CommonCodeVo;
@Service
public class CommonCodeServiceImpl implements CommonCodeService {
    @Autowired
    CommonCodeDao commonCodeDao;
    
    @Override
    public List<CommonCodeVo> selectCommonCodeList(String codeType) throws Exception {
        return commonCodeDao.selectCommonCodeList(codeType);
    }
}
