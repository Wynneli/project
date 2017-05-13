package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Answer;
import com.wynne.Entity.Answer2;

public interface IRAnswerService {
  public List<Answer2> findAllAnswer();
  
  public List<Answer2> FilterAnswer(String aCetId);
  
  public int deleteByPrimaryKey(String aCetId);
  
  public Answer2 findAnswerByPrimary(String aCetId);
  
  public int updateAnswer(Answer2 answer);
  
  public String findCetId(String aCetId);
  
  public int insertanswer(Answer2 answer);
}
