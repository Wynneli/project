package com.wynne.Dao;

import com.wynne.Entity.Answer2;

public interface Answer2Mapper {
    int deleteByPrimaryKey(String aCetId);

    int insert(Answer2 record);

    int insertSelective(Answer2 record);

    Answer2 selectByPrimaryKey(String aCetId);

    int updateByPrimaryKeySelective(Answer2 record);

    int updateByPrimaryKey(Answer2 record);
}