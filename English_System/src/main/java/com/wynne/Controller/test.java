package com.wynne.Controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Cet;
import com.wynne.Entity.User;
import com.wynne.Entity.UserCustom;

@Controller
@RequestMapping("/test")
public class test {
   
//	@InitBinder("user")
//	public void InitBinder1(WebDataBinder binder){
//		binder.setFieldDefaultPrefix("user");
//	}
//	
//	@InitBinder("cet")
//	public void InitBinder2(WebDataBinder binder){
//		binder.setFieldDefaultPrefix("cet");
//	}
	
	@RequestMapping("/test")
	public @ResponseBody Object  test2(@RequestBody List<UserCustom> user){
		System.out.println(user.get(0).toString());
		JSONObject jsonObject=new JSONObject();
		return jsonObject;
	}
}
