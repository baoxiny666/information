package com.tianglhtg.bxy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.tianglhtg.bxy.entity.User;

public interface UserDao {
	public User loginCheck(User user);
	
	@Select("select  @n:=@n+1 rank,uu.uno,uu.uname,uu.upassword,uu.username,uu.tianbsj,uu.uuidindex from t_r_user uu,(select @n:= 0) d order by uu.tianbsj desc")
	public List<User> userList();
	
	@Insert("${sql}")
    public int userAdd(@Param("sql") String sql);
	
	@Select("${sql}")
    public String userEdit(@Param("sql") String sql);
	
	@Select("${sql}")
    public String userDel(@Param("sql") String sql);
	
	@Select("${sql}")
    public Map selectDataById(@Param("sql") String sql);
	
}