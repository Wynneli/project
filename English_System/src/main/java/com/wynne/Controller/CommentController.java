package com.wynne.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.CommentCustom;
import com.wynne.Serivce.ICommentService;
@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired
	private ICommentService commentService;
	
	@RequestMapping("/loading_comment")
	public @ResponseBody Object loading_comment(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String cet4Id=request.getParameter("cet4Id");
		List<CommentCustom> comment_list=commentService.findCommentCustomBytopicId(cet4Id);
		System.out.println(comment_list);
		jsonObject.put("list", comment_list);
		return jsonObject;
	}

}
