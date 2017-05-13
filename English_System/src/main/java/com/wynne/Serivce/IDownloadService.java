package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Download;

public interface IDownloadService {

	public int insertrecord(Download record);
	
	public List<Download> findAll();
	
	public int deletedownload(int fileid);
	
	public Download  findDownloadByPrimaryKey(int fileid);
	
	public int Update(Download download);
}
