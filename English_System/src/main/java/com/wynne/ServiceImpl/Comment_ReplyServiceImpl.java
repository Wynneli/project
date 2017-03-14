package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.CommentMapper;
import com.wynne.Entity.CommentCustom;
import com.wynne.Serivce.IComment_ReplyService;
@Service("comment_ReplyService")
public class Comment_ReplyServiceImpl  implements IComment_ReplyService{
	@Autowired
	private CommentMapper commentMapper;
	
	public List<CommentCustom> getcommentBy_CommentId(String commentid) {
		List<CommentCustom> list=null;
		if(commentid!=null){
			list=commentMapper.findCommentBycommentId(commentid);
			return list;
		}
		return list;
		
	}

}
