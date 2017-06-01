package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Sentence;

public interface SentenceMapper {
    int deleteByPrimaryKey(Integer sentenceId);

    int insert(Sentence record);

    int insertSelective(Sentence record);

    Sentence selectByPrimaryKey(Integer sentenceId);

    int updateByPrimaryKeySelective(Sentence record);

    int updateByPrimaryKey(Sentence record);
    
    List<Sentence> selectOption();
    
    List<Sentence> selectAll();
    
    int count(Integer sentenceId);
    
    int update(Sentence record);
}