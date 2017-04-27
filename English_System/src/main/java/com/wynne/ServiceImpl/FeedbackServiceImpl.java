package com.wynne.ServiceImpl;

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

}
