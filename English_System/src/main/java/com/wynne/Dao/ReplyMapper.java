package com.wynne.Dao;

import com.wynne.Entity.ReplyCustom;

public interface ReplyMapper {
    int deleteByPrimaryKey(String replyId);

    int insert(ReplyCustom record);

    int insertSelective(ReplyCustom record);

    ReplyCustom selectByPrimaryKey(String replyId);

    int updateByPrimaryKeySelective(ReplyCustom record);

    int updateByPrimaryKey(ReplyCustom record);
}