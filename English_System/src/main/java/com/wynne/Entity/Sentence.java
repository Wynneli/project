package com.wynne.Entity;

public class Sentence {
    private Integer sentenceId;

    private String sentenceChinese;

    private String sentenceEnglish;

    private Integer sentenceScan;

    private Integer sentenceUpvote;

    private String sentenceTime;

    private String sentenceType;

    private String sentenceImagepath;

    private String sentenceExtend1;

    private String sentenceExtend2;

    public Integer getSentenceId() {
        return sentenceId;
    }

    public void setSentenceId(Integer sentenceId) {
        this.sentenceId = sentenceId;
    }

    public String getSentenceChinese() {
        return sentenceChinese;
    }

    public void setSentenceChinese(String sentenceChinese) {
        this.sentenceChinese = sentenceChinese == null ? null : sentenceChinese.trim();
    }

    public String getSentenceEnglish() {
        return sentenceEnglish;
    }

    public void setSentenceEnglish(String sentenceEnglish) {
        this.sentenceEnglish = sentenceEnglish == null ? null : sentenceEnglish.trim();
    }

    public Integer getSentenceScan() {
        return sentenceScan;
    }

    public void setSentenceScan(Integer sentenceScan) {
        this.sentenceScan = sentenceScan;
    }

    public Integer getSentenceUpvote() {
        return sentenceUpvote;
    }

    public void setSentenceUpvote(Integer sentenceUpvote) {
        this.sentenceUpvote = sentenceUpvote;
    }

    public String getSentenceTime() {
        return sentenceTime;
    }

    public void setSentenceTime(String sentenceTime) {
        this.sentenceTime = sentenceTime == null ? null : sentenceTime.trim();
    }

    public String getSentenceType() {
        return sentenceType;
    }

    public void setSentenceType(String sentenceType) {
        this.sentenceType = sentenceType == null ? null : sentenceType.trim();
    }

    public String getSentenceImagepath() {
        return sentenceImagepath;
    }

    public void setSentenceImagepath(String sentenceImagepath) {
        this.sentenceImagepath = sentenceImagepath == null ? null : sentenceImagepath.trim();
    }

    public String getSentenceExtend1() {
        return sentenceExtend1;
    }

    public void setSentenceExtend1(String sentenceExtend1) {
        this.sentenceExtend1 = sentenceExtend1 == null ? null : sentenceExtend1.trim();
    }

    public String getSentenceExtend2() {
        return sentenceExtend2;
    }

    public void setSentenceExtend2(String sentenceExtend2) {
        this.sentenceExtend2 = sentenceExtend2 == null ? null : sentenceExtend2.trim();
    }
}