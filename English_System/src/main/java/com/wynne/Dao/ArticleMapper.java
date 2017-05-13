package com.wynne.Dao;

import java.util.List;

import com.wynne.Entity.Article;

public interface ArticleMapper {
    int deleteByPrimaryKey(Integer articleId);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer articleId);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKey(Article record);
    
    List<Article> selectByarticleLike();
    
    int Count();
    
    int updateArticleLike(Article article);
    
    int selectArticleLike(int articleId);
}