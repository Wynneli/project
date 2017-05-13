package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Article;

public interface IArticleService {
	
   public List<Article> findtopArticle();
   
   public int count();
   
   public int updateArticleLike(Article  article);
   
   public int findArticleLike(int articleId);
}
