package com.tianglhtg.bxy.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.tianglhtg.bxy.entity.User;

public interface UserService {
	public User loginCheck(User user);
	
	public  String userList(User user);
	
	public String attatchUsername(String uname);
	
	public Boolean userValidate(String uname);
	
	public String userAdd(String canshu);
	public int userEdit(String param);
	public String userDel(String dataids);

	public Map selectDataById(String dataid);

	public Boolean changePassword(String upassword,String uuidindex);
	
	

}
