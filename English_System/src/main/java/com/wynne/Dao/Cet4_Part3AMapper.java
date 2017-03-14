package com.wynne.Dao;

import com.wynne.Entity.Cet4_Part3A;

public interface Cet4_Part3AMapper {
    int deleteByPrimaryKey(String cet4Part3aId);

    int insert(Cet4_Part3A record);

    int insertSelective(Cet4_Part3A record);

    Cet4_Part3A selectByPrimaryKey(String cet4Part3aId);

    int updateByPrimaryKeySelective(Cet4_Part3A record);

    int updateByPrimaryKey(Cet4_Part3A record);
}