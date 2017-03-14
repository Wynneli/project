package com.wynne.Entity;

public class Reply {
    private String replyId;

    private String rCommentId;

    private String relyContext;

    private Integer relyUid;

    private Integer relyToUid;

    private String relyParentId;

    public String getReplyId() {
        return replyId;
    }

    public void setReplyId(String replyId) {
        this.replyId = replyId == null ? null : replyId.trim();
    }

    public String getrCommentId() {
        return rCommentId;
    }

    public void setrCommentId(String rCommentId) {
        this.rCommentId = rCommentId == null ? null : rCommentId.trim();
    }

    public String getRelyContext() {
        return relyContext;
    }

    public void setRelyContext(String relyContext) {
        this.relyContext = relyContext == null ? null : relyContext.trim();
    }

    public Integer getRelyUid() {
        return relyUid;
    }

    public void setRelyUid(Integer relyUid) {
        this.relyUid = relyUid;
    }

    public Integer getRelyToUid() {
        return relyToUid;
    }

    public void setRelyToUid(Integer relyToUid) {
        this.relyToUid = relyToUid;
    }

    public String getRelyParentId() {
        return relyParentId;
    }

    public void setRelyParentId(String relyParentId) {
        this.relyParentId = relyParentId == null ? null : relyParentId.trim();
    }
}