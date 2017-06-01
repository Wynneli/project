package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public interface ICommentService {
	public List<CommentCustom> findCommentCustomBytopicId(String topicId);
	
	public int insertCommentSelective(CommentCustom commentCustom);
	
	public List<CommentCustom> findAllComment(int pageOffset);
	
	public int deleteCommentByPrimaryKey(int commentId);
	
	public int countComment();
	
	public List<CommentCustom> findall(String username);
}
