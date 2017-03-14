package com.wynne.Dao;

import com.wynne.Entity.Cet4_Part3B;

public interface Cet4_Part3BMapper {
    int deleteByPrimaryKey(String cet4Part3bId);

    int insert(Cet4_Part3B record);

    int insertSelective(Cet4_Part3B record);

    Cet4_Part3B selectByPrimaryKey(String cet4Part3bId);

    int updateByPrimaryKeySelective(Cet4_Part3B record);

    int updateByPrimaryKey(Cet4_Part3B record);
}