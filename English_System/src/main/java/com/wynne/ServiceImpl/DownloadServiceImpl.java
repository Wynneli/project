package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.DownloadMapper;
import com.wynne.Entity.Download;
import com.wynne.Serivce.IDownloadService;
import com.wynne.Utils.fileRename;
@Service
public class DownloadServiceImpl implements IDownloadService{

	@Autowired
	private DownloadMapper downloadMapper;

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

	public int deletedownload(int fileid) {
		return downloadMapper.deleteByPrimaryKey(fileid);
	}

	public Download findDownloadByPrimaryKey(int fileid) {
		return downloadMapper.selectByPrimaryKey(fileid);
	}

	public int Update(Download download) {
		int count=0;
		if(download!=null){
			String filename=download.getFilename();
			String filername=download.getFilername();
			String rpath=download.getFilepath();
			int index=filename.lastIndexOf(".");
			String str=filename.substring(index,filename.length());
			if(filername.contains(".")){
				int index2=filername.lastIndexOf(".");
				String str2=filername.substring(index2, filername.length());
				System.out.println(str.equals(str2));
				if(!str.equals(str2)){
					filername=filername+str;
				}
			}else{
				filername=filername+str;
			}
			download.setFilername(filername);
			download.setFilename(download.getFilename().substring(0, 14)+filername);
			int index3=download.getFilepath().lastIndexOf("/")+14;
			download.setFilepath(download.getFilepath().substring(0, index3)+filername);
			if(fileRename.rename(rpath, download.getFilepath())){
				count=downloadMapper.updateByPrimaryKeySelective(download);
			}
		}
		return count;
	}

}
