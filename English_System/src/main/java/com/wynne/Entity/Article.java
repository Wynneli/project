package com.wynne.Entity;

public class Article {
    private Integer articleId;

    private String articleChinese;

    private String articleEnglish;

    private String articleTime;

    private Integer articleScan;

    private Integer articleLike;

    private String articleOther;

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleChinese() {
        return articleChinese;
    }

    public void setArticleChinese(String articleChinese) {
        this.articleChinese = articleChinese == null ? null : articleChinese.trim();
    }

    public String getArticleEnglish() {
        return articleEnglish;
    }

    public void setArticleEnglish(String articleEnglish) {
        this.articleEnglish = articleEnglish == null ? null : articleEnglish.trim();
    }

    public String getArticleTime() {
        return articleTime;
    }

    public void setArticleTime(String articleTime) {
        this.articleTime = articleTime == null ? null : articleTime.trim();
    }

    public Integer getArticleScan() {
        return articleScan;
    }

    public void setArticleScan(Integer articleScan) {
        this.articleScan = articleScan;
    }

    public Integer getArticleLike() {
        return articleLike;
    }

    public void setArticleLike(Integer articleLike) {
        this.articleLike = articleLike;
    }

    public String getArticleOther() {
        return articleOther;
    }

    public void setArticleOther(String articleOther) {
        this.articleOther = articleOther == null ? null : articleOther.trim();
    }
}