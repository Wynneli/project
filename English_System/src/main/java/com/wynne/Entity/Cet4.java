package com.wynne.Entity;

public class Cet4 {
    private String cet4Id;

    private String cet4Vocabulary;

    private String cet4Pronunciation;

    private String cet4Meaning;

    public String getCet4Id() {
        return cet4Id;
    }

    public void setCet4Id(String cet4Id) {
        this.cet4Id = cet4Id == null ? null : cet4Id.trim();
    }

    public String getCet4Vocabulary() {
        return cet4Vocabulary;
    }

    public void setCet4Vocabulary(String cet4Vocabulary) {
        this.cet4Vocabulary = cet4Vocabulary == null ? null : cet4Vocabulary.trim();
    }

    public String getCet4Pronunciation() {
        return cet4Pronunciation;
    }

    public void setCet4Pronunciation(String cet4Pronunciation) {
        this.cet4Pronunciation = cet4Pronunciation == null ? null : cet4Pronunciation.trim();
    }

    public String getCet4Meaning() {
        return cet4Meaning;
    }

    public void setCet4Meaning(String cet4Meaning) {
        this.cet4Meaning = cet4Meaning == null ? null : cet4Meaning.trim();
    }

	@Override
	public String toString() {
		return "Cet4 [cet4Id=" + cet4Id + ", cet4Vocabulary=" + cet4Vocabulary + ", cet4Pronunciation="
				+ cet4Pronunciation + ", cet4Meaning=" + cet4Meaning + "]";
	}
}