package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.CommentCustom;

public interface IComment_ReplyService {
   public List<CommentCustom> getcommentBy_CommentId(String commentid);
}
