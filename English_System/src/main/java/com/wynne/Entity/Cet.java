package com.wynne.Entity;

public class Cet {
    private Integer cetPrimary;

    private String cetid;

    private String cetInfo;

    private String cetEntend1;

    private String cetEntend2;

    private String cetEntend3;

    private String cetEntend4;

    private String cetEntend5;

    public Integer getCetPrimary() {
        return cetPrimary;
    }

    public void setCetPrimary(Integer cetPrimary) {
        this.cetPrimary = cetPrimary;
    }

    public String getCetid() {
        return cetid;
    }

    public void setCetid(String cetid) {
        this.cetid = cetid == null ? null : cetid.trim();
    }

    public String getCetInfo() {
        return cetInfo;
    }

    public void setCetInfo(String cetInfo) {
        this.cetInfo = cetInfo == null ? null : cetInfo.trim();
    }

    public String getCetEntend1() {
        return cetEntend1;
    }

    public void setCetEntend1(String cetEntend1) {
        this.cetEntend1 = cetEntend1 == null ? null : cetEntend1.trim();
    }

    public String getCetEntend2() {
        return cetEntend2;
    }

    public void setCetEntend2(String cetEntend2) {
        this.cetEntend2 = cetEntend2 == null ? null : cetEntend2.trim();
    }

    public String getCetEntend3() {
        return cetEntend3;
    }

    public void setCetEntend3(String cetEntend3) {
        this.cetEntend3 = cetEntend3 == null ? null : cetEntend3.trim();
    }

    public String getCetEntend4() {
        return cetEntend4;
    }

    public void setCetEntend4(String cetEntend4) {
        this.cetEntend4 = cetEntend4 == null ? null : cetEntend4.trim();
    }

    public String getCetEntend5() {
        return cetEntend5;
    }

    public void setCetEntend5(String cetEntend5) {
        this.cetEntend5 = cetEntend5 == null ? null : cetEntend5.trim();
    }
}