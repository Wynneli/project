package com.wynne.Dao;

import com.wynne.Entity.Answer;

public interface AnswerMapper {
    int deleteByPrimaryKey(Integer answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(Integer answerId);
    
    Answer selectBycetTypeAndUserName(Answer answer);
    
    Answer selectByUserName(String  username);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);
}