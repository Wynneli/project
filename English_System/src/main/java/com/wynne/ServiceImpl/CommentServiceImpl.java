package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.CommentMapper;
import com.wynne.Entity.CommentCustom;
import com.wynne.Serivce.ICommentService;
@Service("commentService")
public class CommentServiceImpl implements ICommentService{
  @Autowired
  private CommentMapper commentMapper;
  
	public List<CommentCustom> findCommentCustomBytopicId(String topicId) {
		return commentMapper.selectCommentCustomBytopicId(topicId);
	}

	public int insertCommentSelective(CommentCustom record) {
		return commentMapper.insertSelective(record);
	}

	public List<CommentCustom> findAllComment(int pageOffset) {
		return commentMapper.selectAllComment(pageOffset);
	}

	public int deleteCommentByPrimaryKey(int commentId) {
		return commentMapper.deleteByPrimaryKey(commentId);
	}

	public int countComment() {
		return commentMapper.countComment();
	}

	public List<CommentCustom> findall(String username) {
		return commentMapper.selectOption(username);
	}

	

	
}
