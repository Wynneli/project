package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Answer2;
import com.wynne.Serivce.IRAnswerService;

@Controller
@RequestMapping("/answer")
public class AnswerController {

	@Autowired
	private IRAnswerService answerService;

	private final static String SUCCESS="success";

	private final static String FAILURE="failure";

	@RequestMapping("/showAnswerinfo")
	public ModelAndView showAnswerinfo(){
		ModelAndView modelAndView=new ModelAndView();
		List<Answer2> answer_list=new ArrayList<Answer2>();
		answer_list=answerService.findAllAnswer();
		modelAndView.addObject("answer_list", answer_list);
		modelAndView.setViewName("admin4/RAnswer");
		return modelAndView;
	}

	@RequestMapping("/edit/{answerId}")
	public ModelAndView edit(@PathVariable("answerId") int answerId){
		ModelAndView modelAndView=new ModelAndView();
		List<Answer2> answer_list=new ArrayList<Answer2>();
		if(answerId>0){
			answer_list=answerService.findAllAnswer();
		}
		modelAndView.addObject("answer_list", answer_list);
		modelAndView.setViewName("admin4/RAnswer");
		return modelAndView;
	}

	@RequestMapping("/Brushanswer")
	public @ResponseBody JSONObject Brushanswer(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Answer2> list=new ArrayList<Answer2>();
		String answer=request.getParameter("answerId");
		String a_cet_id=null;
		if(answer.equals("四级")){
			a_cet_id="cet4_";
		}else if(answer.equals("六级")){
			a_cet_id="cet6_";
		}else{
			a_cet_id="";
		}
		System.out.println(a_cet_id);
		list=answerService.FilterAnswer(a_cet_id);
		if(!list.isEmpty()){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("list", list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/deleteAnswer")
	public @ResponseBody JSONObject deleteAnswer(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Answer2> list=new ArrayList<Answer2>();
		int count=0;
		String answer=request.getParameter("answerId");
		int index=answer.lastIndexOf("/");
		String a_cet_id=answer.substring(index+1, answer.length());
		if(!a_cet_id.equals("")){
			count=answerService.deleteByPrimaryKey(a_cet_id);
		}
		if(count>0){
			jsonObject.put("attr", SUCCESS);
			list=answerService.findAllAnswer();
			jsonObject.put("list", list);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/BatchdeleteAnswer")
	public @ResponseBody Object BatchdeleteAnswer(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Answer2> list=new ArrayList<Answer2>();
		int counts=0;
		String AnswerIdList=request.getParameter("AnswerIdList");
		String[] items=AnswerIdList.split(",");
		for(int i=0;i<items.length;i++){
			int count=answerService.deleteByPrimaryKey(items[i]);
			System.out.println(items[i]);
			if(count==1){
				counts=counts+1;
			}
		}
		if(counts==items.length){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		list=answerService.findAllAnswer();
		if(!list.isEmpty()){
			jsonObject.put("list", list);
		}
		return jsonObject;
	}

	@RequestMapping("/editAnswer/{aCetId}")
	public  ModelAndView editAnswer(@PathVariable("aCetId") String aCetId){
		ModelAndView modelAndView=new ModelAndView();
		Answer2 answer=new Answer2();
		if(!aCetId.equals("")){
			answer=answerService.findAnswerByPrimary(aCetId);
		}
		if(answer!=null){
			modelAndView.addObject("answer", answer);
		}
		modelAndView.setViewName("admin4/editAnswer");
		return modelAndView;

	}

	@RequestMapping("/editAndsavepart1")
	public @ResponseBody Object editAndsavepart1(@RequestBody Answer2 answer){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(answer!=null){
			count=answerService.updateAnswer(answer);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}

	@RequestMapping("/addanswer")
	public @ResponseBody Object addanswer(@RequestBody Answer2 answer){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		String aCetId="";
		if(!answer.getaCetId().equals("")){
			aCetId=answerService.findCetId(answer.getaCetId());
		}
		if(answer.getaCetId().equals(aCetId)){
			jsonObject.put("info", "exist");
			jsonObject.put("attr", FAILURE);
		}else{
			count=answerService.insertanswer(answer);
			if(count==1){
				jsonObject.put("attr", SUCCESS);
			}else{
				jsonObject.put("attr", FAILURE);
			}
		}
		return jsonObject;
	}

}
