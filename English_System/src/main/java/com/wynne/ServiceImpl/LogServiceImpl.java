package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wynne.Dao.LogMapper;
import com.wynne.Entity.Log;
import com.wynne.Entity.LogCustom;
import com.wynne.Serivce.ILogService;

@Service("logService")
@Transactional(rollbackFor=Exception.class)
public class LogServiceImpl implements ILogService {
	@Autowired
	private LogMapper logMapper;
	
	
	public Boolean insertLog(LogCustom logCustomer)throws Throwable {
		int colume=logMapper.insert(logCustomer);
		Boolean flag=null;
		if(colume>0){
			flag=true;
		}else{
			flag=false;
		}
		return flag;
	}


	public List<Log> findAll() {
		return logMapper.selectAll();
	}
	
}
