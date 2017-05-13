package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.mysql.fabric.xmlrpc.base.Array;
import com.wynne.Entity.Feedback;
import com.wynne.Serivce.IFeedbackService;
import com.wynne.Utils.SystemTime;

@Controller
@RequestMapping("/feedback")
public class FeedBackController {
	@Autowired
	private IFeedbackService feedbackService;

	private final static String SUCCESS="success";

	private final static String FAILURE="faliure";


	@RequestMapping("/showfeedbackinfo")
	public ModelAndView showfeedbackinfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<Feedback> list=new ArrayList<Feedback>();
		list=feedbackService.FindAllFeedBack();
		modelAndView.addObject("feedback_list", list);
		modelAndView.setViewName("admin4/feedback");
		return modelAndView;
	}

	@RequestMapping("/deleteFeedBack")
	public @ResponseBody Object deleteFeedBack(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int feedbackId=0;
		int count=0;
		List<Feedback> list=new ArrayList<Feedback>();
		String feedback=request.getParameter("feedback_id");
		if(!feedback.equals("")){
			feedbackId=Integer.parseInt(feedback);
		}
		if(feedbackId!=0){
			count=feedbackService.DeleteFeedBack(feedbackId);
		}
		if(count==1){
			jsonObject.put("attr",SUCCESS);
		}else{
			jsonObject.put("attr",FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/Brushfeedback")
	public @ResponseBody Object Brushfeedback(@RequestBody Feedback feedback){
		JSONObject jsonObject=new JSONObject();
		List<Feedback> list=new ArrayList<Feedback>();
		String feedbackstate=null;
		String feedbackaccept=null;
		if(!feedback.getFeedbackState().equals("")){
			feedbackstate=feedback.getFeedbackState();
		}
		if(!feedback.getFeedbackAccept().equals("")){
			feedbackaccept=feedback.getFeedbackAccept();
		}
		if(feedbackstate!=null||feedbackaccept!=null){
			list=feedbackService.FindAllFeedBack(feedbackstate,feedbackaccept);
		}
		if(!list.isEmpty()){
			jsonObject.put("attr",SUCCESS);
			jsonObject.put("list", list);
		}else{
			jsonObject.put("attr",FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/editFeedback")
	public @ResponseBody Object editFeedback(@RequestBody Feedback feedback){
		JSONObject jsonObject=new JSONObject();
		feedback.setFeedbackHtime(SystemTime.getTime());
		int count =0;
		if(feedback!=null){
			count=feedbackService.updataFeedBack(feedback);
		}
		if(count==1){
			jsonObject.put("attr",SUCCESS);
		}else{
			jsonObject.put("attr",FAILURE);
		}
		return jsonObject;
	}



	@RequestMapping("/feedbackDetails/{feedback_id}")
	public ModelAndView  feedbackDetails(@PathVariable("feedback_id") int feedbackId){
		ModelAndView modelAndView=new ModelAndView();
		Feedback feedback=new Feedback();
		feedback=feedbackService.findByPrimaryKey(feedbackId);
		System.out.println(feedback);
		if(feedback!=null){
			modelAndView.addObject("feedback", feedback);
		}
		modelAndView.setViewName("admin4/FeedbackDetails");
//		modelAndView.setViewName("test/test");
		return modelAndView;
	}

	@RequestMapping("/returnback")
	public ModelAndView returnback(){
		ModelAndView modelAndView=new ModelAndView();
		List<Feedback> list=new ArrayList<Feedback>();
		list=feedbackService.FindAllFeedBack();
		modelAndView.addObject("feedback_list", list);
		modelAndView.setViewName("admin4/feedback");
		return modelAndView;
	}

}
