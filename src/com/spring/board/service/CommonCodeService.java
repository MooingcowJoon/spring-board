package com.spring.board.service;

import java.util.List;

import com.spring.board.vo.common.CommonCodeVo;

public interface CommonCodeService {

    public List<CommonCodeVo> selectCommonCodeList(String codeType) throws Exception;
}
