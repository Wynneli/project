package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.NewMapper;
import com.wynne.Entity.New;
import com.wynne.Serivce.INewService;
@Service
public class NewServiceimpl implements INewService{
	
	@Autowired
	private NewMapper newMapper;

	public New findByPrimaryKey(int newid) {
		return newMapper.selectByPrimaryKey(newid);
	}

}
