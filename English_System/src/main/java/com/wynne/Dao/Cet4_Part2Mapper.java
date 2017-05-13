package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Cet4_Part2Custom;

public interface Cet4_Part2Mapper {
    

	Cet4_Part2Custom selectByPrimaryKey(Integer cet42Id) throws Exception; 
    
    List<Cet4_Part2Custom> selectBycet42TestId(String cet42TestId) throws Exception;
   
    
    int updateByPrimaryKeySelective(Cet4_Part2Custom record);
}