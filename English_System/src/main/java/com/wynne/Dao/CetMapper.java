package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Cet;

public interface CetMapper {
	int deleteByPrimaryKey(Integer cetPrimary);

	int insert(Cet record);

	int insertSelective(Cet record);

	Cet selectByPrimaryKey(Integer cetPrimary);

	int updateByPrimaryKeySelective(Cet record);

	int updateByPrimaryKey(Cet record);

	List<Cet> selectCondition(String cet);
	
	int selectCetId(String cetid);
	
	int selectCetInfo(String cetInfo);
	
	 Cet sletctCet(String cetid);
}