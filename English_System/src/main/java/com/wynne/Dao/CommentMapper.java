package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public interface CommentMapper {
    int deleteByPrimaryKey(Integer CommentCustomId);

    int insert(CommentCustom record);

    int insertSelective(CommentCustom record);

    CommentCustom selectByPrimaryKey(Integer CommentCustomId);
    
    List<CommentCustom> selectCommentCustomBytopicId(String topicId);

    int updateByPrimaryKeySelective(CommentCustom record);

    int updateByPrimaryKey(CommentCustom record);
}