package com.wynne.Entity;

public class Cet4_Part1 {
    private String cet4TestId;

    private String cet4TestContent;

    private String cet4Title;

    public String getCet4TestId() {
        return cet4TestId;
    }

    public void setCet4TestId(String cet4TestId) {
        this.cet4TestId = cet4TestId == null ? null : cet4TestId.trim();
    }

    public String getCet4TestContent() {
        return cet4TestContent;
    }

    public void setCet4TestContent(String cet4TestContent) {
        this.cet4TestContent = cet4TestContent == null ? null : cet4TestContent.trim();
    }

    public String getCet4Title() {
        return cet4Title;
    }

    public void setCet4Title(String cet4Title) {
        this.cet4Title = cet4Title == null ? null : cet4Title.trim();
    }
}