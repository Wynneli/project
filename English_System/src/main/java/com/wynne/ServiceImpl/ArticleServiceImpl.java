package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.ArticleMapper;
import com.wynne.Entity.Article;
import com.wynne.Serivce.IArticleService;
@Service
public class ArticleServiceImpl implements IArticleService{

	@Autowired
	private ArticleMapper articleMapper;
	
	public List<Article> findtopArticle() {
		return articleMapper.selectByarticleLike();
	}

	public int count() {
		return articleMapper.Count();
	}

	public int updateArticleLike(Article article) {
		return articleMapper.updateArticleLike(article);
	}

	public int findArticleLike(int articleId) {
		return articleMapper.selectArticleLike(articleId);
	}

	public List<Article> findAll() {
		return articleMapper.selectAll();
	}

	public Article findByPrimaryKey(int articleId) {
		return articleMapper.selectByPrimaryKey(articleId);
	}

	public int deleteByPrimatyKey(int articleId) {
		return articleMapper.deleteByPrimaryKey(articleId);
	}

	public int updateByPrimary(Article article) {
		return articleMapper.updateByPrimaryKeySelective(article);
	}

	public int insert(Article article) {
		return articleMapper.insertSelective(article);
	}

}
