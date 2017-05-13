package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Sentence;

public interface ISentenceService {
	
   public List<Sentence> FindOption();
   
   public int count(Integer sentenceId);
   
   public int update(Sentence record);
   
}
