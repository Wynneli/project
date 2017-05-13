package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.SentenceMapper;
import com.wynne.Entity.Sentence;
import com.wynne.Serivce.ISentenceService;
@Service
public class SentenceServiceImpl implements ISentenceService{

	@Autowired
	private SentenceMapper sentenceMapper;
	
	public List<Sentence> FindOption() {
		return sentenceMapper.selectOption();
	}

	public int count(Integer sentenceId) {
		return sentenceMapper.count(sentenceId);
	}

	public int update(Sentence record) {
		return sentenceMapper.update(record);
	}
   
}
