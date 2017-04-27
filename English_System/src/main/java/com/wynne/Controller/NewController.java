package com.wynne.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wynne.Entity.New;
import com.wynne.Entity.P;
import com.wynne.Serivce.INewService;
import com.wynne.Serivce.IPService;

@Controller

@RequestMapping("/new")
public class NewController {

	@Autowired
	private IPService pService;

	@Autowired
	private INewService newService;

	@RequestMapping("/findnew/{id}")
	public String findnew(@PathVariable("id") String id,HttpSession session){
		int newid=Integer.parseInt(id);
		P p=new P();
		New news=new New();
		news=newService.findByPrimaryKey(newid);
		if(news!=null){
			p=pService.findPByPrimarykey(news.getNewmainid());
			session.setAttribute("news", news);

		}else{
			return "newerror";
		}
		if(p!=null){
			session.setAttribute("p", p);
		}else{
			return "newerror";
		}
		return "redirect:/Page/New/new.jsp";
	}

	@RequestMapping("/findnew2/{id}")
	public String findnew2(@PathVariable("id") String id,HttpSession session){
		int newid=Integer.parseInt(id);
		P p=new P();
		New news=new New();
		news=newService.findByPrimaryKey(newid);
		if(news!=null){
			p=pService.findPByPrimarykey(news.getNewmainid());
			session.setAttribute("news", news);

		}else{
			return "newerror";
		}
		if(p!=null){
			session.setAttribute("p", p);
		}else{
			return "newerror";
		}
		if(newid==23){
			return "redirect:/Page/New/new2.jsp";
		}else if(newid==19){
			return "redirect:/Page/New/new3.jsp";
		}
		return "redirect:/Page/New/new4.jsp";
	}
}
