package com.wynne.Entity;

public class Cet4_Part2 {
    private Integer cet42Id;

    private String cet42TestId;

    private String cet42Section;

    private String cet42Topic;

    private String cet42Title;

    private String cet42A;

    private String cet42B;

    private String cet42C;

    private String cet42D;

    public Integer getCet42Id() {
        return cet42Id;
    }

    public void setCet42Id(Integer cet42Id) {
        this.cet42Id = cet42Id;
    }

    public String getCet42TestId() {
        return cet42TestId;
    }

    public void setCet42TestId(String cet42TestId) {
        this.cet42TestId = cet42TestId == null ? null : cet42TestId.trim();
    }

    public String getCet42Section() {
        return cet42Section;
    }

    public void setCet42Section(String cet42Section) {
        this.cet42Section = cet42Section == null ? null : cet42Section.trim();
    }

    public String getCet42Topic() {
        return cet42Topic;
    }

    public void setCet42Topic(String cet42Topic) {
        this.cet42Topic = cet42Topic == null ? null : cet42Topic.trim();
    }

    public String getCet42Title() {
        return cet42Title;
    }

    public void setCet42Title(String cet42Title) {
        this.cet42Title = cet42Title == null ? null : cet42Title.trim();
    }

    public String getCet42A() {
        return cet42A;
    }

    public void setCet42A(String cet42A) {
        this.cet42A = cet42A == null ? null : cet42A.trim();
    }

    public String getCet42B() {
        return cet42B;
    }

    public void setCet42B(String cet42B) {
        this.cet42B = cet42B == null ? null : cet42B.trim();
    }

    public String getCet42C() {
        return cet42C;
    }

    public void setCet42C(String cet42C) {
        this.cet42C = cet42C == null ? null : cet42C.trim();
    }

    public String getCet42D() {
        return cet42D;
    }

    public void setCet42D(String cet42D) {
        this.cet42D = cet42D == null ? null : cet42D.trim();
    }

	@Override
	public String toString() {
		return "Cet4_Part2 [cet42Id=" + cet42Id + ", cet42TestId=" + cet42TestId + ", cet42Section=" + cet42Section
				+ ", cet42Topic=" + cet42Topic + ", cet42Title=" + cet42Title + ", cet42A=" + cet42A + ", cet42B="
				+ cet42B + ", cet42C=" + cet42C + ", cet42D=" + cet42D + "]";
	}
}