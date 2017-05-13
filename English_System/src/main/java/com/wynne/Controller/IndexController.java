package com.wynne.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wynne.Entity.Article;
import com.wynne.Entity.Sentence;
import com.wynne.Serivce.IArticleService;
import com.wynne.Serivce.ISentenceService;

@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	private IArticleService articleService;

	@Autowired
	private ISentenceService sentenceService;

	@RequestMapping("/returnIndexIfo")
	public ModelAndView returnIndexInfo(HttpSession session){
		System.out.println("index");
		ModelAndView modelAndView=new ModelAndView();
		List<Article> article_list=articleService.findtopArticle();
		int articlecount=articleService.count();
		List<Sentence> sentence_list=new ArrayList<Sentence>();
		sentence_list=sentenceService.FindOption();
		session.setAttribute("articlecount", articlecount);
		session.setAttribute("article_list", article_list);
		session.setAttribute("sentence_list", sentence_list);
		modelAndView.setViewName("index");
		return modelAndView;
	}
}
