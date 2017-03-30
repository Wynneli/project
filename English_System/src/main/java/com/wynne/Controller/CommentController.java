package com.wynne.Controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.CommentCustom;
import com.wynne.Serivce.ICommentService;
import com.wynne.Utils.JsonDateValueProcessor;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private ICommentService commentService;

	@SuppressWarnings("static-access")
	@RequestMapping("/loading_comment")
	public @ResponseBody Object loading_comment(HttpServletRequest request){
		JSONArray jsonArray=new JSONArray();
		JsonConfig jsonConfig=new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor("yyyy-MM-dd HH:mm:ss"));
		//		JSONObject jsonObject=new JSONObject();
		String cet4Id=request.getParameter("cet4Id");
		List<CommentCustom> comment_list=commentService.findCommentCustomBytopicId(cet4Id);
		System.out.println(comment_list);
		jsonArray.add(comment_list);
		//		jsonObject.put("list", comment_list);
		jsonArray=jsonArray.fromObject(comment_list,jsonConfig);
		return jsonArray;
	}

}
