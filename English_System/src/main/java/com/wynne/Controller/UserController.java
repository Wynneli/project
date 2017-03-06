package com.wynne.Controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSON;
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
	@RequestMapping("/login")
	public String showUserName(UserCustom userCustom,HttpServletRequest request
			,HttpServletResponse response,RedirectAttributes redirectAttributes)throws Throwable{
		//		System.out.println(userCustom.getUserpassword()+"\t"+userCustom.getUserphone());
		UserCustom user=userService.getUserByPhone(userCustom.getUserphone(), userCustom.getUserpassword());
		//		System.out.println(user);
		if(user!=null){
			redirectAttributes.addAttribute("username", 1234);
			return "redirect:/";
			//request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		return "jsp/error";
	}

	@RequestMapping("/register")
	public String Register(UserCustom userCustomer)throws Throwable{
		System.out.println(JSON.toJSONString(userCustomer)+"\t");
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
}