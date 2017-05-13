package com.wynne.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.wynne.Entity.Article;
import com.wynne.Serivce.IArticleService;

@Controller
@RequestMapping("/article")
public class ArticleController {
  
	@Autowired
	private IArticleService articleService;
	
	private static final String SUCCESS="success";
	
	private static final String FAILURE="failure";
	
	@RequestMapping("/upvote")
	public @ResponseBody Object  upvote(@RequestBody Article article){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		int articleLike=0;
		if(article!=null){
			article.setArticleLike(article.getArticleLike()+1);
			count=articleService.updateArticleLike(article);
		}
		if(count==1){
			articleLike=articleService.findArticleLike(article.getArticleId());
		}
		if(articleLike!=0){
			jsonObject.put("attr", SUCCESS);
			jsonObject.put("articleLike", articleLike);
		}
		return jsonObject;
	}
	
}
