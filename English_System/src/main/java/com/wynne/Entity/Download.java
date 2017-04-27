package com.wynne.Entity;

public class Download {
    private Integer fileid;

    private String filetype;

    private String filepath;

    private Integer filedownloadsum;

    private String filename;

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
}