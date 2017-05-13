package com.wynne.Entity;

public class Cet {
	private Integer cetPrimary;

	private String cetid;

	private String cetInfo;

	private String cetEntend1;

	private Integer cetEntend2;

	private String cetEntend3;

	private String cetEntend4;

	private String cetEntend5;

	private Cet4_Part1 cet4_Part1;

	@Override
	public String toString() {
		return "Cet [cetPrimary=" + cetPrimary + ", cetid=" + cetid + ", cetInfo=" + cetInfo + ", cetEntend1="
				+ cetEntend1 + ", cetEntend2=" + cetEntend2 + ", cetEntend3=" + cetEntend3 + ", cetEntend4="
				+ cetEntend4 + ", cetEntend5=" + cetEntend5 + ", cet4_Part1=" + cet4_Part1 + "]";
	}

	public Cet4_Part1 getCet4_Part1() {
		return cet4_Part1;
	}

	public void setCet4_Part1(Cet4_Part1 cet4_Part1) {
		this.cet4_Part1 = cet4_Part1;
	}

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

	public Integer getCetEntend2() {
		return cetEntend2;
	}

	public void setCetEntend2(Integer cetEntend2) {
		this.cetEntend2 = cetEntend2;
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