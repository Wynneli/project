package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Feedback;

public interface IFeedbackService {
    public int insertRecord(Feedback record);
    
    public List<Feedback> FindAllFeedBack();
    
    public List<Feedback> FindAllFeedBack(String feedbackstate,String feedbackaccept);

    public int DeleteFeedBack(int feedbackId);
    
    public int updataFeedBack(Feedback record);

    public Feedback findByPrimaryKey(int feedbackId);
    
    public List<Feedback> findfeedbackOption(String username);
}
