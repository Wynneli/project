package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Sentence;
import com.wynne.Serivce.ISentenceService;
import com.wynne.Utils.SystemTime;

@Controller
@RequestMapping("/sentence")
public class SentenceController {

	@Autowired
	private ISentenceService sentenceService;

	private static final String SUCCESS="success";

	private static final String FAILURE="failure";

	@RequestMapping("/upvote")
	public @ResponseBody Object upvote(@RequestBody Sentence sentence){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int sentenceUpvote=0;
		System.out.println(sentence.getSentenceId());
		if(sentence!=null){
			sentence.setSentenceUpvote(sentence.getSentenceUpvote()+1);
			count=sentenceService.update(sentence);
		}
		System.out.println(count);
		if(count==1){
			sentenceUpvote=sentenceService.count(sentence.getSentenceId());
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("sentenceUpvote", sentenceUpvote);
		}
		return jsonObject;
	}

	@RequestMapping("/showAllSentence")
	public String showAllSentence(HttpSession session){
		List<Sentence> sentence_list2=new ArrayList<Sentence>();
		sentence_list2=sentenceService.findAll();
		session.setAttribute("sentence_list2", sentence_list2);
		session.setAttribute("sentence_listlength", sentence_list2.size());
		return "redirect:/Page/more/Allsentence.jsp";
	}

	@RequestMapping("/AshowAllSentence")
	public ModelAndView AshowAllSentence(){
		ModelAndView modelAndView=new ModelAndView();
		List<Sentence> sentence_list=new ArrayList<Sentence>();
		sentence_list=sentenceService.findAll();
		if(sentence_list!=null){
			modelAndView.addObject("sentence_list", sentence_list);
			modelAndView.setViewName("admin4/sentence");
		}else{
			modelAndView.addObject("error_msg", "没有数据！");
			modelAndView.setViewName("error");
		}
		return modelAndView;
	}

	@RequestMapping("/sentenceDetails/{sentenceId}")
	public ModelAndView sentenceDetails(@PathVariable("sentenceId") int sentenceId){
		ModelAndView modelAndView=new ModelAndView();
		Sentence sentence=new Sentence();
		sentence=sentenceService.findByPrimaryKey(sentenceId);
		if(sentence!=null){
			modelAndView.addObject("sentence", sentence);
			modelAndView.setViewName("admin4/sentenceDetails");
		}else{
			modelAndView.addObject("error_msg", "没有数据！");
			modelAndView.setViewName("error");
		}
		return modelAndView;
	}


	@RequestMapping("/deleteSentence")
	public @ResponseBody Object deleteSentence(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int sentenceId=Integer.parseInt(request.getParameter("sentenceId"));
		int count=sentenceService.deleteByPrimaryKey(sentenceId);
		if(count==1){
			jsonObject.put("attr", "success");
		}else{
			jsonObject.put("attr", "failure");
		}
		return jsonObject;
	}

	@RequestMapping("/BatchdeleteSentence")
	public @ResponseBody Object BatchdeleteSentence(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Sentence> list=new ArrayList<Sentence>();
		int counts=0;
		String SentenceIdList=request.getParameter("SentenceIdList");
		String[] items=SentenceIdList.split(",");

		for(int i=0;i<items.length;i++){
			int count=sentenceService.deleteByPrimaryKey(Integer.parseInt(items[i]));
			if(count==1){
				counts=counts+1;
			}
		}
		if(counts==items.length){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		list=sentenceService.findAll();
		if(!list.isEmpty()){
			jsonObject.put("list", list);
		}
		return jsonObject;
	}
	
	@RequestMapping("/addSentence")
	public @ResponseBody Object addSentence(@RequestBody Sentence sentence){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		sentence.setSentenceScan(0);
		sentence.setSentenceUpvote(0);
		sentence.setSentenceTime(SystemTime.getTime());
		if(sentence!=null){
			count=sentenceService.insert(sentence);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}
}
