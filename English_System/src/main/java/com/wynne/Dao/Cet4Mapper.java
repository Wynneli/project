package com.wynne.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Cet4Custom;

public interface Cet4Mapper {
    int deleteByPrimaryKey(String cet4Id);

    int insert(Cet4Custom record);
 
    int insertSelective(Cet4Custom record);

    Cet4Custom selectByPrimaryKey(String cet4Id);

    int updateByPrimaryKeySelective(Cet4Custom record);

    int updateByPrimaryKey(Cet4Custom record);
    
    int countCet4(@Param("CET") String CET);
    
    List<Cet4Custom> selectCet4(@Param("CET") String CET,@Param("pageOffset")int pageOffset);
    
    String selectLastCet4Id(String CET);
    
    List<Cet4Custom> selectAlltest();
}