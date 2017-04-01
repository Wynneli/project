package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.CommentCustom;
import com.wynne.Entity.JsonMessage;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.ICommentService;
import com.wynne.Serivce.IUserService;
import com.wynne.Utils.TranferTime;
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired  
	private IUserService userService;

	@Autowired
	private ICommentService iCommentService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	@RequestMapping("/show_userinfo")
	public String show_userinfo(HttpSession session){
		List<UserCustom> allUser_list =new ArrayList<UserCustom>();
		allUser_list=userService.findAllUser();
		if(allUser_list!=null){
			session.setAttribute("AllUser_list", allUser_list);
		}
		return "Admin/UserManage";
	}

	@RequestMapping("/search")
	public @ResponseBody Object search(@RequestBody UserCustom userCustom){
		JSONObject jsonObject=new JSONObject();
		List<UserCustom> obscure_list=new ArrayList<UserCustom>();
		obscure_list=userService.Obscure_find(userCustom);
		jsonObject.put("obscure_list", obscure_list);
		return jsonObject;
	}

	@RequestMapping("/deleteuser")
	public @ResponseBody Object deleteuser( HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		JsonMessage jsonMessage=new JsonMessage();
		int count=0;
		int userid=Integer.parseInt(request.getParameter("userid"));
		count=userService.deleteByPrimaryKey(userid);
		List<UserCustom> allUser_list =new ArrayList<UserCustom>();
		allUser_list=userService.findAllUser();
		if(count==1&&allUser_list!=null){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("allUser_list", allUser_list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/show_commentifo")
	public String show_CommenInfo(HttpSession session){
		List<CommentCustom> allComment_list =new ArrayList<CommentCustom>();
		allComment_list= iCommentService.findAllComment();
		List<String> time_list=new ArrayList<String>();
		if(allComment_list!=null){
			for(int i=0;i<allComment_list.size();i++){
				time_list.add(TranferTime.change(allComment_list.get(i).getCommentTime()));
			}
			session.setAttribute("time_list", time_list);
			session.setAttribute("allComment_list", allComment_list);
		}else{
			session.setAttribute("false", FAILURE);
		}
		return "Admin/CommentManage";
	}
}
