package com.wynne.Controller;

import java.util.ArrayList;
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
import com.wynne.Utils.HandleUserName;
import com.wynne.Utils.JsonDateValueProcessor;

import net.sf.json.JSONArray;
import net.sf.json.JsonConfig;
@Controller
@RequestMapping("/comment")
public class CommentController {

	@Autowired
	private ICommentService commentService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	private final static String cet4type="四级单词";

	private final static String cet6type="六级单词";

	@SuppressWarnings("static-access")
	@RequestMapping("/loading_comment")
	public @ResponseBody Object loading_comment(HttpServletRequest request){
		JSONArray jsonArray=new JSONArray();
		JsonConfig jsonConfig=new JsonConfig();
		jsonConfig.registerJsonValueProcessor(Date.class, new JsonDateValueProcessor("yyyy-MM-dd HH:mm:ss"));
		String cet4Id=request.getParameter("cet4Id");
		List<CommentCustom> comment_list=commentService.findCommentCustomBytopicId(cet4Id);
		System.out.println(comment_list);
		jsonArray.add(comment_list);
		//		jsonObject.put("list", comment_list);
		jsonArray=jsonArray.fromObject(comment_list,jsonConfig);
		return jsonArray;
	}
	@RequestMapping("/sumuit_comment")
	public @ResponseBody Object sumuit_comment(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		CommentCustom commentCustom=new CommentCustom();
		commentCustom.setCommentContent(request.getParameter("commentContent"));
		System.out.println(request.getParameter("commentFromUsername"));
		commentCustom.setCommentFromUsername(HandleUserName.handle(request.getParameter("commentFromUsername")));
		commentCustom.setTopicId(request.getParameter("cet4Id"));
		if(request.getParameter("cet4Id").contains("cet4_")){
			commentCustom.setTopicType(cet4type);
		}else{
			commentCustom.setTopicType(cet6type);
		}
		if(!request.getParameter("commentToUsername").trim().equals("")){
			commentCustom.setCommentToUsername(request.getParameter("commentToUsername"));
		}
		commentCustom.setCommentTime(new Date());
		//		System.out.println(commentCustom.toString());
		count=commentService.insertCommentSelective(commentCustom);

		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/deleteComment")
	public @ResponseBody Object deleteComment( HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int commentId=Integer.parseInt(request.getParameter("commentId"));
		count=commentService.deleteCommentByPrimaryKey(commentId);
		List<CommentCustom> allComment_list =new ArrayList<CommentCustom>();
		allComment_list=commentService.findAllComment(1);
		if(count==1&&allComment_list!=null){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/searchcomment")
	public @ResponseBody Object searchcomment( HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		String username=request.getParameter("username");
		List<CommentCustom> list =new ArrayList<CommentCustom>();
		list=commentService.findall(username);
		if(list!=null){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("list", list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

}
