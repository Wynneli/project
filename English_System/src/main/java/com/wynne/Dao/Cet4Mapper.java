package com.wynne.Dao;

import com.wynne.Entity.Cet4Custom;

public interface Cet4Mapper {
    int deleteByPrimaryKey(String cet4Id);

    int insert(Cet4Custom record);

    int insertSelective(Cet4Custom record);

    Cet4Custom selectByPrimaryKey(String cet4Id);

    int updateByPrimaryKeySelective(Cet4Custom record);

    int updateByPrimaryKey(Cet4Custom record);
}