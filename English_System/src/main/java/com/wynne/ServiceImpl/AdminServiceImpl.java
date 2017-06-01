package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.AdminMapper;
import com.wynne.Entity.Admin;
import com.wynne.Serivce.IAdminService;
@Service
public class AdminServiceImpl implements IAdminService{

	
	@Autowired
	private AdminMapper adminMapper;
	public Admin checkadmin(String username,String password) {
		return adminMapper.selectByName(username,password);
	}

}
