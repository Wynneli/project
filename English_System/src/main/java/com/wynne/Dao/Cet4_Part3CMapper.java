package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Cet4_Part3C;

public interface Cet4_Part3CMapper {
    int deleteByPrimaryKey(Integer cet4PartcId);

    int insert(Cet4_Part3C record);

    int insertSelective(Cet4_Part3C record);

    Cet4_Part3C selectByPrimaryKey(Integer cet4PartcId);
    
    List<Cet4_Part3C> selectBycet4PartcIds(String cet4PartcIds);

    int updateByPrimaryKeySelective(Cet4_Part3C record);

    int updateByPrimaryKey(Cet4_Part3C record);
}