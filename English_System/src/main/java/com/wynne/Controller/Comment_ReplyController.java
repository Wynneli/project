package com.wynne.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wynne.Entity.Cet4Custom;
import com.wynne.Entity.CommentCustom;
import com.wynne.Serivce.IComment_ReplyService;

@Controller("comment_ReplyController")
@RequestMapping("comment_reply")
public class Comment_ReplyController {
	@Autowired
	private IComment_ReplyService comment_ReplyService;

	@RequestMapping("loading_commentAndreply")
	public ModelAndView show_cet4word_commentAndreply(HttpSession session,ModelAndView modelAndView){
		List<CommentCustom> list_comment=null;
		Cet4Custom cet4Custom=null;
		cet4Custom=(Cet4Custom) session.getAttribute("cet4Custom");
		System.out.println(cet4Custom.getCet4Id());
		if(cet4Custom.getCet4Id()!=null){
			list_comment=comment_ReplyService.getcommentBy_CommentId(cet4Custom.getCet4Id());
			for(CommentCustom c:list_comment){
				System.out.println(c.toString());
			}
			modelAndView.addObject("list_comment", list_comment);
			modelAndView.setViewName("cet4/cet4_vocabulary");
			return modelAndView;
		}
		modelAndView.addObject("message", "目前还有有用户进行评论!");
		modelAndView.setViewName("cet4/cet4_vocabulary");
		return modelAndView;

	}
}
