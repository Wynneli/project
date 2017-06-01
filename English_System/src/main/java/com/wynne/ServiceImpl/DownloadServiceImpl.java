package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.DownloadMapper;
import com.wynne.Entity.Download;
import com.wynne.Serivce.IDownloadService;
import com.wynne.Utils.deleteFile;
import com.wynne.Utils.fileRename;
@Service
public class DownloadServiceImpl implements IDownloadService{

	@Autowired
	private DownloadMapper downloadMapper;

	private static final String path="G:/毕设/temp/";

	public int insertrecord(Download record) {
		int count=0;
		if(record!=null){
			count=downloadMapper.insertSelective(record);
		}
		return count;
	}

	public List<Download> findAll(){
		return downloadMapper.selectAll();
	}

	public List<Download> findAll2(String filetype){
		return downloadMapper.selectAllOption(filetype);
	}

	public int deletedownload(int fileid) {
		Download download=new Download();
		int count=0;
		int count1=0;
		if(fileid>0){
			download=downloadMapper.selectByPrimaryKey(fileid);
			String filepath=download.getFilepath();
			String realfilePath=path+filepath.substring(6, filepath.length());
			System.out.println(realfilePath);
			count=deleteFile.delete(realfilePath);		
		}
		if(count==1){
			count1=downloadMapper.deleteByPrimaryKey(fileid);
		}
		return count1;
	}

	public Download findDownloadByPrimaryKey(int fileid) {
		return downloadMapper.selectByPrimaryKey(fileid);
	}



	public int Update(Download download) {
		return downloadMapper.updateByPrimaryKeySelective(download);
	}

	public List<Download> findAllOption2(String filetype, String filetypes) {
		return downloadMapper.selectAllOption2(filetype, filetypes);
	}

	public int Update2(Download download) {
		int count=0;
		System.out.println(download.toString());
		if(download!=null){
			String filename=download.getFilename();
			String filerealname=download.getFilerealname();
			String rpath=download.getFilepath();
			System.out.println(rpath);
			int index=filename.lastIndexOf(".");
			String str=filename.substring(index,filename.length());
			download.setFilename(filerealname+str);
			int index2=download.getFilepath().lastIndexOf("/");
			download.setFilepath(download.getFilepath().substring(0, index2+1)+download.getFilename());
			if(fileRename.rename(rpath, download.getFilename())){
				count=downloadMapper.updateByPrimaryKeySelective(download);
			}
		}
		return count;
	}
}


