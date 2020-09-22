package com.tianglhtg.bxy.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.tianglhtg.bxy.dao.UserDao;
import com.tianglhtg.bxy.entity.Md5;
import com.tianglhtg.bxy.entity.User;
import com.tianglhtg.bxy.service.UserService;

import net.sf.json.JSONArray;

@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

	
	public User loginCheck(User user) {
		User u = userDao.loginCheck(user);
		return u;
	}


	@Override
	public String userList() {
		// TODO Auto-generated method stub
		HashMap<String,String> pmap = new HashMap<String, String>();
	
		

		List<User> list = userDao.userList();
		JSONArray json = JSONArray.fromObject(list);	
		return json.toString();
	}
	

	@Override
	public String attatchUsername(String uname) {
		// TODO Auto-generated method stub
		String  sql = "select username from t_r_user where uname = trim('"+uname+"')";
		Map usernameMap = userDao.attatchUsername(sql);
		
		return usernameMap.get("username").toString();

	}


	@Override
	public String userAdd(String canshu) {
		// TODO Auto-generated method stub
		String uuid = UUID.randomUUID().toString().replaceAll("-", "")+System.currentTimeMillis();
		Md5 md5 = new Md5();
		// 字符串中数据提取
		com.alibaba.fastjson.JSONObject jo=new com.alibaba.fastjson.JSONObject();
		Map dataMap = jo.parseObject(canshu, Map.class);
		
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	 	String currenttime = df.format(new Date());// new Date()为获取当前系统时间
	 	

	 	
		StringBuilder values = new StringBuilder();
		StringBuilder columns = new StringBuilder();
	
		
		columns.append("uuidindex").append(",");
		values.append("'"+uuid+"'").append(",");
		columns.append("tianbsj").append(",");
		values.append("str_to_date('"+currenttime+"','%Y-%m-%d %H:%i:%s')").append(",");
		
		// 拼接SQL
		String sql="insert into t_r_user ({columns}) values({values})";
		
		Iterator iter = dataMap.keySet().iterator();
		while(iter.hasNext()) {
			String key = (String)iter.next();
			if("upassword".equals(key)) {
				String data = "key:"+key+",value="+"'"+ md5.encrypt32(dataMap.get(key).toString())+"'";
				System.out.println(data);
				
				columns.append(key).append(",");
				values.append("'"+md5.encrypt32(dataMap.get(key).toString())+"'").append(",");
			}else {
				String data = "key:"+key+",value="+"'"+dataMap.get(key)+"'";
				System.out.println(data);
				
				columns.append(key).append(",");
				values.append("'"+dataMap.get(key)+"'").append(",");
			}
			
			
			
		}
		
		sql = sql.replace("{columns}",columns.substring(0, columns.length()-1))
				.replace("{values}", values.substring(0, values.length()-1));
		// 执行SQL
		
		int i = userDao.userAdd(sql);
		
		
		return "1";
	}


	@Override
	public int userEdit(String param) {
		// 字符串中数据提取
		com.alibaba.fastjson.JSONObject jo=new com.alibaba.fastjson.JSONObject();
		Map dataMap = jo.parseObject(param, Map.class);
		Md5 md5 = new Md5();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	 	String currenttime = df.format(new Date());// new Date()为获取当前系统时间
	 	
		String id=dataMap.get("uuidindex").toString();
		
		// 获得表单基本信息（表名称及字段描述）
		
		// 拼接SQL
		String sql="update t_r_user  set {sets} where uuidindex={id}";
		
		StringBuffer sets = new StringBuffer();
		sets.append("tianbsj").append("=").append("str_to_date('"+currenttime+"','%Y-%m-%d %H:%i:%s')").append(",");
		Iterator iter = dataMap.keySet().iterator();
		Map resultMap = new HashMap();
		while(iter.hasNext()) {
			
	
			String key = (String)iter.next();
			/*
			 * if("upassword".equals(key) &&
			 * !StringUtils.isBlank(dataMap.get(key).toString())) { String data =
			 * "key:"+key+",value="+dataMap.get(key); System.out.println(data);
			 * if(!key.equals("uuidindex")){
			 * sets.append(key).append("='").append(dataMap.get(key)).append("',"); } }
			 */
			
			if("upassword".equals(key)) {
				if(!StringUtils.isBlank(dataMap.get(key).toString())) {
					String data = "key:"+key+",value="+"'"+ md5.encrypt32(dataMap.get(key).toString())+"'";
					System.out.println(data);
					sets.append(key).append("='").append(md5.encrypt32(dataMap.get(key).toString())).append("',");
				}else {
					continue;
				}
				
			}else {
				String data = "key:"+key+",value="+dataMap.get(key);
				System.out.println(data);
				if(!key.equals("uuidindex")){
					sets.append(key).append("='").append(dataMap.get(key)).append("',");
				}
			}
			
			
		
			
		}
		
		
		sql = sql
			.replace("{sets}",sets.substring(0, sets.length()-1))
			.replace("{id}","'"+id+"'");

		// 执行SQL
		userDao.userEdit(sql);
	
		return 1;
	}


	@Override
	public String userDel(String dataids) {
		
		// 拼接SQL
		String sql = "delete from t_r_user where uuidindex in ({dataids})";
		String[] splitdataids = dataids.split("&");
		StringBuilder sb = new StringBuilder();
		for(int z=0;z<splitdataids.length;z++){
			if(z!=splitdataids.length-1){
				sb.append("'"+splitdataids[z]+"',");
			}else{
				sb.append("'"+splitdataids[z]+"'");
			}
			
		}
		sql = sql.replace("{dataids}", sb);
		userDao.userDel(sql);
		// 执行SQL
		return "1";
	
	}


	@Override
	public Map selectDataById(String dataid) {
		String substring = dataid.substring(dataid.lastIndexOf("=")+1);
		// TODO Auto-generated method stub
		String sql = "select * from t_r_user where uuidindex='"+substring+"'";

		return userDao.selectDataById(sql);
	}


	@Override
	public Boolean userValidate(String uname) {
		// TODO Auto-generated method stub
		String substring = uname.substring(uname.lastIndexOf("=")+1);
		String sql = "select count(uname) from t_r_user where uname = trim('"+substring+"')";
		if(userDao.userValidate(sql)>0) {
			return false;
		}else {
			return true;
		}
		
	}


	@Override
	public Boolean changePassword(String upassword, String uuidindex) {
		// TODO Auto-generated method stub
		String sql = "update t_r_user set upassword = '"+upassword+"' where uuidindex='"+uuidindex+"'";
		int updatepass= userDao.changePassword(sql);
		if(updatepass > 0) {
			return true;
		}
		return false;
	}


}
