package com.wynne.Entity;

public class New {
    private Integer newid;

    private String newtype;

    private String newtopic;

    private String newlead;

    private String newother1;

    private String newother;

    private Integer newmainid;

    public Integer getNewid() {
        return newid;
    }

    public void setNewid(Integer newid) {
        this.newid = newid;
    }

    public String getNewtype() {
        return newtype;
    }

    public void setNewtype(String newtype) {
        this.newtype = newtype == null ? null : newtype.trim();
    }

    public String getNewtopic() {
        return newtopic;
    }

    public void setNewtopic(String newtopic) {
        this.newtopic = newtopic == null ? null : newtopic.trim();
    }

    public String getNewlead() {
        return newlead;
    }

    public void setNewlead(String newlead) {
        this.newlead = newlead == null ? null : newlead.trim();
    }

    public String getNewother1() {
        return newother1;
    }

    public void setNewother1(String newother1) {
        this.newother1 = newother1 == null ? null : newother1.trim();
    }

    public String getNewother() {
        return newother;
    }

    public void setNewother(String newother) {
        this.newother = newother == null ? null : newother.trim();
    }

    public Integer getNewmainid() {
        return newmainid;
    }

    public void setNewmainid(Integer newmainid) {
        this.newmainid = newmainid;
    }

	@Override
	public String toString() {
		return "New [newid=" + newid + ", newtype=" + newtype + ", newtopic=" + newtopic + ", newlead=" + newlead
				+ ", newother1=" + newother1 + ", newother=" + newother + ", newmainid=" + newmainid + "]";
	}
}