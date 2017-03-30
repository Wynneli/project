package com.wynne.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Cet4_Part1Custom;

public interface Cet4_Part1Mapper {
    int deleteByPrimaryKey(String cet4TestId);

    int insert(Cet4_Part1Custom record);

    int insertSelective(Cet4_Part1Custom record);

    Cet4_Part1Custom selectByPrimaryKey(String cet4TestId);

    int updateByPrimaryKeySelective(Cet4_Part1Custom record);

    int updateByPrimaryKey(Cet4_Part1Custom record);
    
    List<Cet4_Part1Custom>  selectBycet4TestId(@Param("cet4TestId") String cet4TestId);
}