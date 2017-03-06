package com.wynne.Serivce;

import com.wynne.Entity.UserCustom;

public interface IUserService {  
	public UserCustom getUserById(Integer userId) throws Throwable;
	public UserCustom getUserByPhone(String userphone,String userpassword) throws Throwable;
	public Boolean InsertUser(UserCustom userCustomer)throws Throwable;
	public Boolean updateUser(UserCustom userCustomer)throws Throwable;
	public Boolean deleteUser(Integer userId)throws Throwable;
}  