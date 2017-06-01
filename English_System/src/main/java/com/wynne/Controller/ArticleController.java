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
import com.wynne.Entity.Article;
import com.wynne.Serivce.IArticleService;
import com.wynne.Utils.SystemTime;

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

	@RequestMapping("/showAllArticle")
	public String showAllArticle(HttpSession session){
		List<Article> article_list2=new ArrayList<Article>();
		article_list2=articleService.findAll();
		session.setAttribute("article_list2", article_list2);
		session.setAttribute("article_list2_length", article_list2.size());
		return "redirect:/Page/more/Allarticle.jsp";
	}

	@RequestMapping("/showAllArticles")
	public ModelAndView showAllArticles(){
		ModelAndView modelAndView=new ModelAndView();
		List<Article> article_list=new ArrayList<Article>();
		article_list=articleService.findAll();
		if(article_list!=null){
			modelAndView.addObject("article_list", article_list);
			modelAndView.setViewName("admin4/article");
		}else{
			modelAndView.addObject("error_message", "没有数据!");
			modelAndView.setViewName("admin4/article");
		}
		return modelAndView;
	}

	@RequestMapping("/articleDetails/{articleId}")
	public ModelAndView articleDetails(@PathVariable("articleId") int articleId){
		ModelAndView modelAndView=new ModelAndView();
		Article article=new Article();
		article=articleService.findByPrimaryKey(articleId);
		if(article!=null){
			modelAndView.addObject("article", article);
			modelAndView.setViewName("admin4/articleDetails");
		}else{
			modelAndView.addObject("error_message", "没有数据!");
			modelAndView.setViewName("admin4/error");
		}
		return modelAndView;
	}

	@RequestMapping("/deleteArticle")
	public @ResponseBody Object deleteArticle(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		int articleId=Integer.parseInt(request.getParameter("articleId"));
		System.out.println(articleId);
		int count=articleService.deleteByPrimatyKey(articleId);
		if(count==1){
			jsonObject.put("attr", "success");
		}else{
			jsonObject.put("attr", "failure");
		}
		return jsonObject;
	}

	@RequestMapping("/BatchdeleteArticle")
	public @ResponseBody Object BatchdeleteArticle(HttpServletRequest request){
		JSONObject jsonObject=new JSONObject();
		List<Article> list=new ArrayList<Article>();
		int counts=0;
		String ArticleIdList=request.getParameter("ArticleIdList");
		String[] items=ArticleIdList.split(",");

		for(int i=0;i<items.length;i++){
			int count=articleService.deleteByPrimatyKey(Integer.parseInt(items[i]));
			if(count==1){
				counts=counts+1;
			}
		}
		if(counts==items.length){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		list=articleService.findAll();
		if(!list.isEmpty()){
			jsonObject.put("list", list);
		}
		return jsonObject;
	}

	@RequestMapping("/updateArticle")
	public @ResponseBody Object updateArticle(@RequestBody Article article){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		if(article.getArticleId()>0){
			count=articleService.updateByPrimary(article);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}


	@RequestMapping("/addArticle")
	public @ResponseBody Object addArticle(@RequestBody Article article){
		JSONObject jsonObject=new JSONObject();
		int count=0;
		article.setArticleLike(0);
		article.setArticleScan(0);
		article.setArticleTime(SystemTime.getTime());
		if(article!=null){
			count=articleService.insert(article);
		}
		if(count==1){
			jsonObject.put("attr", SUCCESS);
		}else{
			jsonObject.put("attr", FAILURE);
		}
		return jsonObject;
	}
}
