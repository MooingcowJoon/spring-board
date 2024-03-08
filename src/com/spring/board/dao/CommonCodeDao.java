package com.spring.board.dao;
import java.util.List;

import com.spring.board.vo.common.CommonCodeVo;

public interface CommonCodeDao {
    public List<CommonCodeVo> selectCommonCodeList(String codeType) throws Exception;
}
