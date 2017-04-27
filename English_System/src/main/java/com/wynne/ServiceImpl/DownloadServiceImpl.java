package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.DownloadMapper;
import com.wynne.Entity.Download;
import com.wynne.Serivce.IDownloadService;
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

}
