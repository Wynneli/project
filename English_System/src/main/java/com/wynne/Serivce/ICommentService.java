package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public interface ICommentService {
	public List<CommentCustom> findCommentCustomBytopicId(String topicId);
	
}
