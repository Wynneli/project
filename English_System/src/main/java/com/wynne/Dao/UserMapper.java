package com.wynne.Dao;

import com.wynne.Entity.UserCustom;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid)throws Throwable;

    int insert(UserCustom record)throws Throwable;

    int insertSelective(UserCustom record)throws Throwable;

    UserCustom selectByPrimaryKey(Integer userid)throws Throwable;

    int updateByPrimaryKeySelective(UserCustom record)throws Throwable;

    int updateByPrimaryKey(UserCustom record)throws Throwable;
    
    UserCustom selectByUserPhone(String userphone)throws Throwable;
}