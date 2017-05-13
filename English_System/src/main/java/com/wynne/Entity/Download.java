package com.wynne.Entity;

public class Download {
    private Integer fileid;

    private String filetype;

    private String filepath;

    private Integer filedownloadsum;

	private String filename;

    private String filetime;

    private String filername;

    private String filecetid;

    public Integer getFileid() {
        return fileid;
    }

    public void setFileid(Integer fileid) {
        this.fileid = fileid;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype == null ? null : filetype.trim();
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath == null ? null : filepath.trim();
    }

    public Integer getFiledownloadsum() {
        return filedownloadsum;
    }

    public void setFiledownloadsum(Integer filedownloadsum) {
        this.filedownloadsum = filedownloadsum;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename == null ? null : filename.trim();
    }

    public String getFiletime() {
        return filetime;
    }

    public void setFiletime(String filetime) {
        this.filetime = filetime == null ? null : filetime.trim();
    }

    public String getFilername() {
        return filername;
    }

    public void setFilername(String filername) {
        this.filername = filername == null ? null : filername.trim();
    }

    public String getFilecetid() {
        return filecetid;
    }

    public void setFilecetid(String filecetid) {
        this.filecetid = filecetid == null ? null : filecetid.trim();
    }
    

    @Override
	public String toString() {
		return "Download [fileid=" + fileid + ", filetype=" + filetype + ", filepath=" + filepath + ", filedownloadsum="
				+ filedownloadsum + ", filename=" + filename + ", filetime=" + filetime + ", filername=" + filername
				+ ", filecetid=" + filecetid + "]";
	}

}