package com.wynne.ServiceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	private final String SUCCESS="success";

	private final String FAILURE="密码不正确";

	private final String NOTEXISITE="用户不存在";

	private final String EXISITE="用户存在";


	public UserCustom getUserById(Integer userid){ 
		System.out.println(1321);
		return (UserCustom)userMapper.selectByPrimaryKey(userid); 
	}

	public UserCustom getUserByPhone(String userphone,String userpassword) {
		UserCustom userCustomer=(UserCustom) userMapper.selectByUserPhone(userphone);
		if(userCustomer!=null&&userCustomer.getUserpassword().equals(userpassword)&&userCustomer.getUserphone().equals(userphone)){
			return userCustomer;
		}
		return userCustomer;
	}

	public Boolean InsertUser(UserCustom userCustomer) {
		Boolean flag=false;
		Integer column=userMapper.insert(userCustomer);
		if(column>0){
			flag=true;
		}
		return flag;
	}

	public Boolean updateUser(UserCustom userCustomer){
		if(userCustomer!=null){
			userMapper.updateByPrimaryKey(userCustomer);
		}
		return true;
	}

	public Boolean deleteUser(Integer userId) {
		return null;
	}

	public List<UserCustom> findAllUser() {
		return userMapper.selectAllUser();
	}

	public List<UserCustom> Obscure_find(UserCustom userCustom) {

		return userMapper.Obscure_select(userCustom);
	}

	public int deleteByPrimaryKey(int userid) {
		return userMapper.deleteByPrimaryKey(userid);
	}

	public int totalUser() {
		return userMapper.countUser();
	}

	public List<UserCustom> findAllUser2(int pageOffset) {
		return userMapper.selectAllUser2(pageOffset);
	}

	public Map<String, String> findUserByUserName(UserCustom userCustom) {
		Map<String, String> map=new HashMap<String, String>();
		UserCustom user=userMapper.selectByUserName(userCustom.getUsername());
		if(user!=null){
			map.put("existe", EXISITE);
			if(user.getUserpassword().equals(userCustom.getUserpassword())){
				map.put("attr", SUCCESS);
			}else{
				map.put("attr", FAILURE);
			}
		}else{
			map.put("notexiste", NOTEXISITE);
		}
		return map;
	}

	public UserCustom findUserByUserName(String username) {
		UserCustom userCustom=new UserCustom();
		if(!username.trim().equals("")){
			userCustom=userMapper.selectByUserName(username);
		}
		return userCustom;
	}

	public String findUserByUserName2(UserCustom userCustom) {
		UserCustom userCustom2=new UserCustom();
		String attr=null;
		if(userCustom!=null){
			userCustom2=userMapper.selectByUserName(userCustom.getUsername());
		}
		if(userCustom2!=null){
			attr=EXISITE;
		}else{
			attr=NOTEXISITE;
		}
		return attr;
	}

	public String changepass(UserCustom userCustom, String newpass) {
		UserCustom userCustom2=new UserCustom();
		int count=0;
		userCustom2=userMapper.selectByUserName(userCustom.getUsername());
		System.out.println(userCustom2.toString());
		if(userCustom2!=null){
			if(userCustom2.getUserpassword().equals(userCustom.getUserpassword())){
				userCustom2.setUserpassword(newpass);
				count=userMapper.updateByPrimaryKey(userCustom2);
			}
			if(count==1){
				return "success";
			}
		}
		return "false";
	}

	public String updateUser2(UserCustom userCustom) {
		int count=0;
		if(userCustom!=null){
			count=userMapper.updateByPrimaryKeySelective(userCustom);
		}
		if(count==1){
			return "success";
		}
		return "failure";
	}
}
