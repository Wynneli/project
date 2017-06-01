package com.wynne.Dao;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Admin;

public interface AdminMapper {
    int deleteByPrimaryKey(Integer adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    
    Admin selectByName(@Param("adminname") String adminname,@Param("adminpassword") String adminpassword);
}