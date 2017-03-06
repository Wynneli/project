package com.wynne.Dao;


import com.wynne.Entity.LogCustom;

public interface LogMapper {
    int insert(LogCustom record) throws Throwable;

    int insertSelective(LogCustom record)throws Throwable;
}