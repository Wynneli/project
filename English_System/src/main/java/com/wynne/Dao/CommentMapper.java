package com.wynne.Dao;

import java.util.List;
import com.wynne.Entity.CommentCustom;

public interface CommentMapper {
    int deleteByPrimaryKey(String topicId);

    int insert(CommentCustom record);

    int insertSelective(CommentCustom record);

    CommentCustom selectByPrimaryKey(String topicId);
    
    List<CommentCustom> findCommentBycommentId(String commentId);

    int updateByPrimaryKeySelective(CommentCustom record);

    int updateByPrimaryKey(CommentCustom record);
}