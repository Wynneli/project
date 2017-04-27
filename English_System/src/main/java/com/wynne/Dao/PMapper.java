package com.wynne.Dao;

import com.wynne.Entity.P;

public interface PMapper {
    int deleteByPrimaryKey(Integer bodyid);

    int insert(P record);

    int insertSelective(P record);

    P selectByPrimaryKey(Integer bodyid);

    int updateByPrimaryKeySelective(P record);

    int updateByPrimaryKey(P record);
}