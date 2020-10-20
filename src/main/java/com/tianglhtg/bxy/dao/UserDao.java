package com.tianglhtg.bxy.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.tianglhtg.bxy.entity.User;

public interface UserDao {
	public User loginCheck(User user);
	
	/*
	 * @Select("select  @n:=@n+1 rank,uu.uno,uu.uname,uu.upassword,uu.username,uu.tianbsj,uu.uuidindex,uu.company,uu.companyid from t_r_user uu,(select @n:= 0) d order by uu.tianbsj desc"
	 * )
	 */
	public List<User> userList(User user);
	
	@Select("${sql}")
	public Map attatchUsername(@Param("sql") String sql);
	
	@Select("${sql}")
	public int userValidate(@Param("sql") String sql);
	
	@Insert("${sql}")
    public int userAdd(@Param("sql") String sql);
	
	@Update("${sql}")
    public int userEdit(@Param("sql") String sql);
	
	@Delete("${sql}")
    public int userDel(@Param("sql") String sql);
	
	@Select("${sql}")
    public Map selectDataById(@Param("sql") String sql);
	
	@Update("${sql}")
	public  int changePassword(@Param("sql") String sql);
	
}
