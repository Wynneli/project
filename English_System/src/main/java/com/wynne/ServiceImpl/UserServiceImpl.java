package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wynne.Dao.UserMapper;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.IUserService;

@Service("userService")
@Transactional(rollbackFor=Exception.class)
public class UserServiceImpl implements IUserService{
	@Autowired
	private UserMapper userMapper;
	public UserCustom getUserById(Integer userid)throws Throwable{ 
		// TODO Auto-generated method stub
		System.out.println(1321);
		return (UserCustom)userMapper.selectByPrimaryKey(userid); 
	}

	public UserCustom getUserByPhone(String userphone,String userpassword)throws Throwable {
		UserCustom userCustomer=(UserCustom) userMapper.selectByUserPhone(userphone);
		if(userCustomer!=null&&userCustomer.getUserpassword().equals(userpassword)&&userCustomer.getUserphone().equals(userphone)){
			return userCustomer;
		}
		return userCustomer;
	}
	
	public Boolean InsertUser(UserCustom userCustomer) throws Throwable{
		Boolean flag;
		Integer column=userMapper.insert(userCustomer);
		if(column>0){
			flag=true;
		}else{
			flag=false;
		}
		
		return flag;
	}

	public Boolean updateUser(UserCustom userCustomer)throws Throwable{
		if(userCustomer!=null){
			userMapper.updateByPrimaryKey(userCustomer);
		}
		return true;
	}

	public Boolean deleteUser(Integer userId) throws Throwable{
		// TODO Auto-generated method stub
		return null;
	}


}
