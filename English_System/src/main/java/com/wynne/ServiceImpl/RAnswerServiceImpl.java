package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Answer2Mapper;
import com.wynne.Entity.Answer2;
import com.wynne.Serivce.IRAnswerService;
@Service
public class RAnswerServiceImpl  implements IRAnswerService{

	@Autowired
	private Answer2Mapper answer2Mapper;

	public List<Answer2> findAllAnswer() {
		return answer2Mapper.selectAllAnswer();
	}

	public List<Answer2> FilterAnswer(String aCetId) {
		return answer2Mapper.FilterAnswer(aCetId);
	}

	public int deleteByPrimaryKey(String aCetId) {
		int count=0;
		if(!aCetId.equals("")){
			count=answer2Mapper.deleteByPrimaryKey(aCetId);
		}
		return count;
	}

	public Answer2 findAnswerByPrimary(String aCetId) {
		Answer2 answer2=new Answer2();
		if(!aCetId.equals("")){
			answer2=answer2Mapper.selectByPrimaryKey(aCetId);
		}
		return answer2;
	}

	public int updateAnswer(Answer2 answer) {
		int count=0;
		if(answer!=null){
			count=answer2Mapper.updateByPrimaryKeySelective(answer);
		}
		return count;
	}

	public String findCetId(String aCetId) {
		String aString="";
		System.out.println("here"+aCetId);
		if(!aCetId.equals("")){
			aString=answer2Mapper.selectaCetId(aCetId);
		}
		return aString;
	}

	public int insertanswer(Answer2 answer) {
		int count=0;
		if(answer!=null){
			count=answer2Mapper.insertSelective(answer);
		}
		return count;
	}

}
