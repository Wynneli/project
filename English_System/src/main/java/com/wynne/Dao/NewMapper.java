package com.wynne.Dao;

import com.wynne.Entity.New;

public interface NewMapper {
    int deleteByPrimaryKey(Integer newid);

    int insert(New record);

    int insertSelective(New record);

    New selectByPrimaryKey(Integer newid);

    int updateByPrimaryKeySelective(New record);

    int updateByPrimaryKey(New record);
}