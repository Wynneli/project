package com.wynne.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/admin")
public class AdminController {
	
   @RequestMapping("/show_userinfo")
   public String show_userinfo(){
	   return "Admin/UserManage";
   }
}
