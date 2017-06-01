package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer commentId);

    int insert(CommentCustom record);

    int insertSelective(CommentCustom record);

    CommentCustom selectByPrimaryKey(Integer commentId);

    int updateByPrimaryKeySelective(CommentCustom record);
    
    List<CommentCustom> selectCommentCustomBytopicId(String topicId);

    int updateByPrimaryKey(CommentCustom record);
    
    List<CommentCustom> selectAllComment(int pageOffset);
    
    public int countComment();
    
    public List<CommentCustom> selectOption(String username);
}	