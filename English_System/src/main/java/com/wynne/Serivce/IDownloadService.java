package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Download;

public interface IDownloadService {

	public int insertrecord(Download record);

	public List<Download> findAll();

	public List<Download> findAll2(String filetype);

	public List<Download> findAllOption2(String filetype,String filetypes);

	public int deletedownload(int fileid);

	public Download  findDownloadByPrimaryKey(int fileid);

	public int Update(Download download);
	
	public int Update2(Download download);
}
