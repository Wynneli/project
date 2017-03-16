package com.wynne.Entity;

import java.util.Date;

public class Comment {
    private Integer commentId;

    private String topicId;

    private String commentContent;

    private String commentFromUsername;

    private Date commentTime;

    private Integer topicType;

    private String commentToUsername;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getTopicId() {
        return topicId;
    }

    public void setTopicId(String topicId) {
        this.topicId = topicId == null ? null : topicId.trim();
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent == null ? null : commentContent.trim();
    }

    public String getCommentFromUsername() {
        return commentFromUsername;
    }

    public void setCommentFromUsername(String commentFromUsername) {
        this.commentFromUsername = commentFromUsername == null ? null : commentFromUsername.trim();
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    public Integer getTopicType() {
        return topicType;
    }

    public void setTopicType(Integer topicType) {
        this.topicType = topicType;
    }

    public String getCommentToUsername() {
        return commentToUsername;
    }

    public void setCommentToUsername(String commentToUsername) {
        this.commentToUsername = commentToUsername == null ? null : commentToUsername.trim();
    }
}