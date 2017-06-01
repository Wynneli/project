package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Article;

public interface IArticleService {
	
   public List<Article> findtopArticle();
   
   public List<Article> findAll();
   
   public int count();
   
   public int updateArticleLike(Article  article);
   
   public int updateByPrimary(Article  article);
   
   public int findArticleLike(int articleId);
   
   public Article findByPrimaryKey(int articleid);
   
   public int deleteByPrimatyKey(int articleId);
   
   public int insert(Article article);
}
