package com.wynne.Entity;

public class Cet4_Part4 {
    private String cet4Part4Id;

    private String cet4Part4Content;

    public String getCet4Part4Id() {
        return cet4Part4Id;
    }

    public void setCet4Part4Id(String cet4Part4Id) {
        this.cet4Part4Id = cet4Part4Id == null ? null : cet4Part4Id.trim();
    }

    public String getCet4Part4Content() {
        return cet4Part4Content;
    }

    public void setCet4Part4Content(String cet4Part4Content) {
        this.cet4Part4Content = cet4Part4Content == null ? null : cet4Part4Content.trim();
    }
}