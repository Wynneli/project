package com.wynne.Entity;

public class Feedback {
    private Integer feedbackId;

    private String feedbackUsername;

    private String feedbackFirst;

    private String feedbackSecond;

    private String feedbackTitle;

    private String feedbackDesctiption;

    private String feedbackAdvice;

    private String feedbackStime;

    private String feedbackHtime;

    private String feedbackState;

    private String feedbackAccept;

    private String feedbackOther;

    public Integer getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(Integer feedbackId) {
        this.feedbackId = feedbackId;
    }

    public String getFeedbackUsername() {
        return feedbackUsername;
    }

    public void setFeedbackUsername(String feedbackUsername) {
        this.feedbackUsername = feedbackUsername == null ? null : feedbackUsername.trim();
    }

    public String getFeedbackFirst() {
        return feedbackFirst;
    }

    public void setFeedbackFirst(String feedbackFirst) {
        this.feedbackFirst = feedbackFirst == null ? null : feedbackFirst.trim();
    }

    public String getFeedbackSecond() {
        return feedbackSecond;
    }

    public void setFeedbackSecond(String feedbackSecond) {
        this.feedbackSecond = feedbackSecond == null ? null : feedbackSecond.trim();
    }

    public String getFeedbackTitle() {
        return feedbackTitle;
    }

    public void setFeedbackTitle(String feedbackTitle) {
        this.feedbackTitle = feedbackTitle == null ? null : feedbackTitle.trim();
    }

    public String getFeedbackDesctiption() {
        return feedbackDesctiption;
    }

    public void setFeedbackDesctiption(String feedbackDesctiption) {
        this.feedbackDesctiption = feedbackDesctiption == null ? null : feedbackDesctiption.trim();
    }

    public String getFeedbackAdvice() {
        return feedbackAdvice;
    }

    public void setFeedbackAdvice(String feedbackAdvice) {
        this.feedbackAdvice = feedbackAdvice == null ? null : feedbackAdvice.trim();
    }

    public String getFeedbackStime() {
        return feedbackStime;
    }

    public void setFeedbackStime(String feedbackStime) {
        this.feedbackStime = feedbackStime == null ? null : feedbackStime.trim();
    }

    public String getFeedbackHtime() {
        return feedbackHtime;
    }

    public void setFeedbackHtime(String feedbackHtime) {
        this.feedbackHtime = feedbackHtime == null ? null : feedbackHtime.trim();
    }

    public String getFeedbackState() {
        return feedbackState;
    }

    public void setFeedbackState(String feedbackState) {
        this.feedbackState = feedbackState == null ? null : feedbackState.trim();
    }

    public String getFeedbackAccept() {
        return feedbackAccept;
    }

    public void setFeedbackAccept(String feedbackAccept) {
        this.feedbackAccept = feedbackAccept == null ? null : feedbackAccept.trim();
    }

    public String getFeedbackOther() {
        return feedbackOther;
    }

    public void setFeedbackOther(String feedbackOther) {
        this.feedbackOther = feedbackOther == null ? null : feedbackOther.trim();
    }

	@Override
	public String toString() {
		return "Feedback [feedbackId=" + feedbackId + ", feedbackUsername=" + feedbackUsername + ", feedbackFirst="
				+ feedbackFirst + ", feedbackSecond=" + feedbackSecond + ", feedbackTitle=" + feedbackTitle
				+ ", feedbackDesctiption=" + feedbackDesctiption + ", feedbackAdvice=" + feedbackAdvice
				+ ", feedbackStime=" + feedbackStime + ", feedbackHtime=" + feedbackHtime + ", feedbackState="
				+ feedbackState + ", feedbackAccept=" + feedbackAccept + ", feedbackOther=" + feedbackOther + "]";
	}
    
}