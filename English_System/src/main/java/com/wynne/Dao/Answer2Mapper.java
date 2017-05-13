package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Answer2;

public interface Answer2Mapper {
    int deleteByPrimaryKey(String aCetId);

    int insert(Answer2 record);

    int insertSelective(Answer2 record);

    Answer2 selectByPrimaryKey(String aCetId);

    int updateByPrimaryKeySelective(Answer2 record);

    int updateByPrimaryKey(Answer2 record);
    
    List<Answer2> selectAllAnswer();
    
    List<Answer2> FilterAnswer(String a_cet_id);
    
    String selectaCetId(String aCetId);
}