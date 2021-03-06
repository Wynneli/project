package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.FeedbackMapper;
import com.wynne.Entity.Feedback;
import com.wynne.Serivce.IFeedbackService;
@Service
public class FeedbackServiceImpl implements IFeedbackService{
	
	@Autowired
	private FeedbackMapper feedbackMapper;
	
	public int insertRecord(Feedback record) {
		int count=feedbackMapper.insertSelective(record);
		return count;
	}
	public List<Feedback> FindAllFeedBack() {
		return feedbackMapper.selectAllFeedBack();
	}
	public List<Feedback> FindAllFeedBack(String feedbackstate, String feedbackaccept) {
		return feedbackMapper.selectAllFeedBack2(feedbackstate, feedbackaccept);
	}
	public int DeleteFeedBack(int feedbackId) {
		return feedbackMapper.deleteByPrimaryKey(feedbackId);
	}
	public int updataFeedBack(Feedback record) {
		return feedbackMapper.updateByPrimaryKeySelective(record);
	}
	public Feedback findByPrimaryKey(int feedbackId) {
		Feedback feedback=new Feedback();
		if(feedbackId>0){
			feedback=feedbackMapper.selectByPrimaryKey(feedbackId);
		}
		return feedback;
	}
	public List<Feedback> findfeedbackOption(String username) {
		return feedbackMapper.selectfeedbackOption(username);
	}
}
