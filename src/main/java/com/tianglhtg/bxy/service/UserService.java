package com.tianglhtg.bxy.service;

import java.util.Map;

import com.tianglhtg.bxy.entity.User;

public interface UserService {
	public User loginCheck(User user);
	
	public  String userList();
	
	public String attatchUsername(String uname);
	
	public Boolean userValidate(String uname);
	
	public String userAdd(String canshu);
	public int userEdit(String param);
	public String userDel(String dataids);

	public Map selectDataById(String dataid);
	
	

}
