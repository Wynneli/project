package com.wynne.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Sentence;
import com.wynne.Serivce.ISentenceService;

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
}
