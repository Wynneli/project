package com.wynne.Dao;

import com.wynne.Entity.ProcessCustom;

public interface ProcessMapper {
    int deleteByPrimaryKey(Integer processId);

    int insert(ProcessCustom record);

    int insertSelective(ProcessCustom record);

    ProcessCustom selectByPrimaryKey(Integer processId);
    
    ProcessCustom selectBypUserId(Integer pUserId);

    int updateByPrimaryKeySelective(ProcessCustom record);

    int updateByPrimaryKey(ProcessCustom record);
}