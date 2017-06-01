package com.wynne.Entity;

public class Download {
    @Override
	public String toString() {
		return "Download [fileid=" + fileid + ", filetype=" + filetype + ", filepath=" + filepath + ", filedownloadsum="
				+ filedownloadsum + ", filename=" + filename + ", filetime=" + filetime + ", filesize=" + filesize
				+ ", filetypes=" + filetypes + ", filerealname=" + filerealname + "]";
	}

	private Integer fileid;

    private String filetype;

    private String filepath;

    private Integer filedownloadsum;

    private String filename;

    private String filetime;

    private String filesize;

    private String filetypes;
    
    private String filerealname;

    public String getFilerealname() {
		return filerealname;
	}

	public void setFilerealname(String filerealname) {
		this.filerealname = filerealname;
	}

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
		this.filepath = filepath;
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

   

    public String getFilesize() {
		return filesize;
	}

	public void setFilesize(String filesize) {
		this.filesize = filesize;
	}

	public String getFiletypes() {
        return filetypes;
    }

    public void setFiletypes(String filetypes) {
        this.filetypes = filetypes == null ? null : filetypes.trim();
    }
}