package com.wynne.Serivce;

import java.util.List;
import java.util.Map;

import com.wynne.Entity.UserCustom;

public interface IUserService {  
	public UserCustom getUserById(Integer userId) ;
	
	public UserCustom getUserByPhone(String userphone,String userpassword) ;
	
	public UserCustom findUserByUserName(String username);
	
	public Map<String, String> findUserByUserName(UserCustom userCustom);
	
	public String findUserByUserName2(UserCustom userCustom);
	
	public Boolean InsertUser(UserCustom userCustomer);
	
	public Boolean updateUser(UserCustom userCustomer);
	
	public Boolean deleteUser(Integer userId);
	
	public List<UserCustom> findAllUser();
	
	public List<UserCustom> findAllUser2(int pageOffset);
	
	public List<UserCustom> Obscure_find(UserCustom userCustom);
	
	public int deleteByPrimaryKey(int userid);
	
	public int totalUser();
	
	public String  changepass(UserCustom userCustom,String newpass);
	
	public String  updateUser2(UserCustom userCustom);
	
	
}  