package com.wynne.Dao;


import java.util.List;

import com.wynne.Entity.Log;
import com.wynne.Entity.LogCustom;

public interface LogMapper {
    int insert(LogCustom record) throws Throwable;

    int insertSelective(LogCustom record)throws Throwable;
    
    List<Log> selectAll();
}