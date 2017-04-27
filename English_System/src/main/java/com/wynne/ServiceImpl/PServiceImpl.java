package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.PMapper;
import com.wynne.Entity.P;
import com.wynne.Serivce.IPService;
@Service
public class PServiceImpl implements IPService{

	@Autowired
	private PMapper pMapper; 
	
	public P findPByPrimarykey(int bodyid) {
		return pMapper.selectByPrimaryKey(bodyid);
	}

}
