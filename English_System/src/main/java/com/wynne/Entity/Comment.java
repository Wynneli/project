package com.wynne.Entity;

public class Comment {
	private String topicId;

	private String commentId;

	private String commentContent;

	private Integer commentUid;

	public String getTopicId() {
		return topicId;
	}

	public void setTopicId(String topicId) {
		this.topicId = topicId == null ? null : topicId.trim();
	}

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId == null ? null : commentId.trim();
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent == null ? null : commentContent.trim();
	}

	public Integer getCommentUid() {
		return commentUid;
	}



	public void setCommentUid(Integer commentUid) {
		this.commentUid = commentUid;
	}

	@Override
	public String toString() {
		return "Comment [topicId=" + topicId + ", commentId=" + commentId + ", commentContent=" + commentContent
				+ ", commentUid=" + commentUid + "]";
	}
}