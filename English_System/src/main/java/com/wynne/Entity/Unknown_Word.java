package com.wynne.Entity;

public class Unknown_Word {
    private Integer unknownWordId;

    private String unCetId;

    private String unCetVocabulary;

    private String unCetPronunciation;

    private String unCetMeaning;

    private String username;

    public Integer getUnknownWordId() {
        return unknownWordId;
    }

    public void setUnknownWordId(Integer unknownWordId) {
        this.unknownWordId = unknownWordId;
    }

    public String getUnCetId() {
        return unCetId;
    }

    public void setUnCetId(String unCetId) {
        this.unCetId = unCetId == null ? null : unCetId.trim();
    }

    public String getUnCetVocabulary() {
        return unCetVocabulary;
    }

    public void setUnCetVocabulary(String unCetVocabulary) {
        this.unCetVocabulary = unCetVocabulary == null ? null : unCetVocabulary.trim();
    }

    public String getUnCetPronunciation() {
        return unCetPronunciation;
    }

    public void setUnCetPronunciation(String unCetPronunciation) {
        this.unCetPronunciation = unCetPronunciation == null ? null : unCetPronunciation.trim();
    }

    public String getUnCetMeaning() {
        return unCetMeaning;
    }

    public void setUnCetMeaning(String unCetMeaning) {
        this.unCetMeaning = unCetMeaning == null ? null : unCetMeaning.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }
}