package com.wynne.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Feedback;

public interface FeedbackMapper {
	int deleteByPrimaryKey(Integer feedbackId);

	int insert(Feedback record);

	int insertSelective(Feedback record);

	Feedback selectByPrimaryKey(Integer feedbackId);

	int updateByPrimaryKeySelective(Feedback record);

	int updateByPrimaryKey(Feedback record);

	List<Feedback> selectAllFeedBack();
	
	List<Feedback> selectfeedbackOption(String username);

	List<Feedback> selectAllFeedBack2(@Param("feedbackState") String feedbackstate,@Param("feedbackAccept") String feedbackaccept);
}