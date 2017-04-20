package com.wynne.Controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.UserCustom;
import com.wynne.Exception.CustomException;
import com.wynne.Serivce.IUserService;

/**
 *<p>Title:Controller </p>
 *<p>Description: 主要用于处理用户相关的业务逻辑</p>
 * @author liweining
 *@date 2017年2月21日 下午4:29:54 
 */
@Controller  
@RequestMapping("/user")  
public class UserController {  
	//private static Logger log=LoggerFactory.getLogger(UserController.class);
	@Autowired  
	private IUserService userService;   
	
	private final String SUCCESS="success";
	@RequestMapping("/login2")
	public String showUserName(UserCustom userCustom,HttpServletRequest request
			,HttpServletResponse response,HttpSession session)throws Throwable{
		UserCustom user=userService.getUserByPhone(userCustom.getUserphone(), userCustom.getUserpassword());
		if(user!=null){
			session.setAttribute("user",user);
			return "redirect:/";
		}
		return "jsp/error";
	}

	//	@RequestMapping("/login")
	//	public String login(HttpServletRequest request,HttpSession session)throws Throwable{
	//		UserCustom userCustom=new UserCustom();
	//		String username=request.getParameter("username");
	//		System.out.println(username);
	//		userCustom=userService.findUserByUserName(username);
	//		System.out.println(userCustom.toString());
	//		session.setAttribute("user", userCustom);
	//		return "redirect:/";
	//	}

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request,HttpSession session)throws Throwable{
		ModelAndView modelAndView=new ModelAndView();

		UserCustom userCustom=new UserCustom();
		String username=request.getParameter("username");
		userCustom=userService.findUserByUserName(username);
		session.setAttribute("user", userCustom);
		modelAndView.setViewName("redirect:/index.jsp");
		return modelAndView;
	}



	@RequestMapping("/validateUser")
	public @ResponseBody JSONObject validateUser(@RequestBody UserCustom userCustom)throws Throwable{
		Map<String, String> map=new HashMap<String, String>();
		JSONObject jsonObject=new JSONObject();
		map=userService.findUserByUserName(userCustom);
		jsonObject.put("userinfo", map);
		return jsonObject;
	}

	@RequestMapping("/RegisterUser")
	public @ResponseBody JSONObject RegisterUser(@RequestBody UserCustom userCustom)throws Throwable{
		JSONObject jsonObject=new JSONObject();
		String attr=null;
		Boolean flag=false;
		if(userCustom!=null){
			attr=userService.findUserByUserName2(userCustom);
		}
		System.out.println(attr);
		if(attr.equals("用户不存在")){
			flag=userService.InsertUser(userCustom);
		}else{
			jsonObject.put("attr", "用户名已经被使用");
		}
		System.out.println(flag);
		if(flag){
			jsonObject.put("success", SUCCESS);
		}
		return jsonObject;
	}

	@RequestMapping("/loginout")
	public String login_out(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/register")
	public String Register(UserCustom userCustomer)throws Throwable{
		//System.out.println(JSON.toJSONString(userCustomer)+"\t");
		Boolean flag=userService.InsertUser(userCustomer);
		if(flag.equals("false")){
			return "error";
		}
		return "success";
	}


	@RequestMapping("/deleteuser")
	public String deleteUser(UserCustom userCustomer)throws Throwable{
		Boolean flag=userService.deleteUser(userCustomer.getUserid());
		if(flag.equals("false")){
			return "error";
		}
		return "success";
	}


	@RequestMapping("/updateuser")
	public String updateUser(UserCustom userCustomer)throws Throwable{
		Boolean flag=userService.updateUser(userCustomer);
		if(flag.equals("false")){
			throw new CustomException("更新用户信息不成功！");
		}
		return "success";
	}
	
	@RequestMapping("/changePass")
	public @ResponseBody Object changePass(HttpServletRequest request){
		UserCustom userCustom=new UserCustom();
		userCustom.setUsername(request.getParameter("username"));
		userCustom.setUserpassword(request.getParameter("userpassword"));
		String newpass=request.getParameter("newuserpassword");
		String message=userService.changepass(userCustom, newpass);
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("message", message);
		return jsonObject;
	}
	
	@RequestMapping("/updateUser")
	public @ResponseBody Object updateUser(HttpSession session,@RequestBody UserCustom userCustom){
		UserCustom userCustom2=new UserCustom();
		String attr=null;
		userCustom2=(UserCustom) session.getAttribute("user");
		System.out.println(userCustom2.getUsername());
		if(userCustom2!=null){
			userCustom.setUserid(userCustom2.getUserid());
			userCustom.setUsername(userCustom2.getUsername());
			attr=userService.updateUser2(userCustom);
		}
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("message", attr);
		return jsonObject;
	}
	
}