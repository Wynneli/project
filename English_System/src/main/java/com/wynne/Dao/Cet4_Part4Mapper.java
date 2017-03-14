package com.wynne.Dao;

import com.wynne.Entity.Cet4_Part4;

public interface Cet4_Part4Mapper {
    int deleteByPrimaryKey(String cet4Part4Id);

    int insert(Cet4_Part4 record);

    int insertSelective(Cet4_Part4 record);

    Cet4_Part4 selectByPrimaryKey(String cet4Part4Id);

    int updateByPrimaryKeySelective(Cet4_Part4 record);

    int updateByPrimaryKey(Cet4_Part4 record);
}