package com.wynne.Dao;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Unknown_WordCustom;

public interface Unknown_WordMapper {
    int deleteByPrimaryKey(Integer unknownWordId);

    int insert(Unknown_WordCustom record);

    int insertSelective(Unknown_WordCustom record);

    Unknown_WordCustom selectByPrimaryKey(Integer unknownWordId);

    int updateByPrimaryKeySelective(Unknown_WordCustom record);

    int updateByPrimaryKey(Unknown_WordCustom record);

	int deleteByunCetId(String unCetId);
	
	Unknown_WordCustom selectByusernameAndunCetId(@Param("unCetId") String unCetId,@Param("username") String username);

	int countUnkownWord(@Param("CETID") String cetid,@Param("username") String username);
}