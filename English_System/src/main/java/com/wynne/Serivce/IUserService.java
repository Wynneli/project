package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.UserCustom;

public interface IUserService {  
	public UserCustom getUserById(Integer userId) ;
	
	public UserCustom getUserByPhone(String userphone,String userpassword) ;
	
	public Boolean InsertUser(UserCustom userCustomer);
	
	public Boolean updateUser(UserCustom userCustomer);
	
	public Boolean deleteUser(Integer userId);
	
	public List<UserCustom> findAllUser();
	
	public List<UserCustom> Obscure_find(UserCustom userCustom);
	
	public int deleteByPrimaryKey(int userid);
}  