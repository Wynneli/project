package com.wynne.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.UserCustom;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(UserCustom record);

    int insertSelective(UserCustom record);

    UserCustom selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(UserCustom record);

    int updateByPrimaryKey(UserCustom record);
    
    UserCustom selectByUserPhone(String userphone);
    
    UserCustom selectByUserName(String username);
    
    List<UserCustom> selectAllUser();
    
    List<UserCustom> selectAllUser2(@Param("pageOffset") int pageOffset);
    
    List<UserCustom> Obscure_select(UserCustom userCustom);
    
    int countUser();
}