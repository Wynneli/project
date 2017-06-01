package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wynne.Entity.Log;
import com.wynne.Serivce.ILogService;

@Controller
@RequestMapping("/log")
public class LogController {
   
	@Autowired
	private ILogService logService;
	
	@RequestMapping("/showlog")
	public ModelAndView  showlog(){
		ModelAndView modelAndView=new ModelAndView();
		List<Log> list=new ArrayList<Log>();
		list=logService.findAll();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("admin4/log");
		return modelAndView;
	}
}
