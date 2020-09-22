package com.tianglhtg.bxy.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.tianglhtg.bxy.entity.User;
import com.tianglhtg.bxy.service.UserService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	@Resource
	private UserService userService;

	//转向登录页面
	@RequestMapping("tologin")
	public String tologin(){
		return "login";	
	}
	//登录验证
	@RequestMapping(value="checklogin",produces ="application/json;charset=utf-8")
	@ResponseBody
	public String  checklogin(HttpSession session,@RequestParam("uname") String uname,
		@RequestParam("upassword") String upassword,Model model){
		User user = new User();
		user.setUname(uname);
		user.setUpassword(upassword);
		User checkUser = userService.loginCheck(user);
		if(checkUser != null){
			session.setAttribute("LOGIN_USER", uname);
			session.setMaxInactiveInterval(100000);
			JSONObject obj = new JSONObject();
			String jsonStr = "";
			String username = checkUser.getUsername();
			String uuidindex = checkUser.getUuidindex();
			
			
			if("admin".equals(uname)) {
				//String username = userService.attatchUsername(uname);
				obj.put("flag", 2);
				obj.put("account",uname);
				obj.put("username",username);
				obj.put("uuidindex",uuidindex);
				jsonStr = JSONObject.fromObject(obj).toString();
			}else {
				
				//String username = userService.attatchUsername(uname);
				obj.put("flag", 1);
				obj.put("account",uname);
				obj.put("username",username);
				obj.put("uuidindex",uuidindex);
				jsonStr = JSONObject.fromObject(obj).toString();
			}
			return jsonStr;
		
		}
	    else{
	    	JSONObject obj = new JSONObject();
			obj.put("flag", 0);
			obj.put("error","账号或密码错误");
			String jsonStr = JSONObject.fromObject(obj).toString();
			return jsonStr;
	    }
	}
	
	
	 @RequestMapping(value="quitlogin",produces ="application/json;charset=utf-8")
	 @ResponseBody
	 public  String quitlogin(HttpServletRequest request,HttpServletResponse response) {
		 request.getSession().removeAttribute("LOGIN_USER");
		 request.getSession().invalidate();
		 
		 JSONObject obj = new JSONObject();
		 obj.put("flag", "已注销");
		 String jsonStr = JSONObject.fromObject(obj).toString();
		 return jsonStr;
	 }
	
	
	/**
	 * 获得分页数据信息
	 * @param page 页面
	 * @param rows 每页记录数
	 * @param formid 表单ID
	 * @param condition 数据ID
	 * @param request HttpRequest
	 * @return
	 */
    @RequestMapping(value="userList",produces ="application/json;charset=utf-8")
    @ResponseBody
    public  String userList(Integer page, Integer rows,HttpServletRequest request) {
    	Page pages = PageHelper.startPage(page, rows, true);
		
        String list = userService.userList();
        Long total = pages.getTotal();
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", JSONArray.fromObject(list));
        String mmmm =  JSONObject.fromObject(map).toString();
        System.out.println(mmmm);
        return   mmmm;

    }
    
    
    /**
     * 检查用户名是否注册过
     * 
     */
    
    @RequestMapping(value="/userValidate")
    @ResponseBody
    public  Boolean userValidate(String uname) {
    	Boolean bool = userService.userValidate(uname);
	
        return bool;
    }
    
    
    /**
     * 添加数据
     * @param param 表单内所有字段
     * @return
     */
 	
    @RequestMapping(value="/userAdd")
    @ResponseBody
    public  String userAdd(@RequestBody String canshu) {
    	String r = userService.userAdd(canshu);
        return r;
    }
    
    /**
     * 修改数据
     * @param param 表单内所有字段
     * @return
     */
    @RequestMapping(value="/userEdit")
    @ResponseBody
    public  int userEdit(@RequestBody String param) {
    	int r = userService.userEdit(param);
        return r;
    }
    
    /**
     * 删除数据
     * @param formid 表单ID
     * @param dataids 数据ID，可多个","分割 
     * @return
     */
    @RequestMapping(value="/userDel")
    @ResponseBody
    public  int userDel(@RequestBody String dataids) {
    	JSONObject job = new JSONObject().fromObject(dataids);
    	
    	dataids = job.get("dataids").toString();
    	userService.userDel(dataids);
        return 11;
    }
    
    /**
	 * 查询单条数据
     * @return
     */
    @RequestMapping(value="/selectDataById")
    @ResponseBody
    public  Map selectDataById(@RequestBody String dataid) {
    	Map mm = userService.selectDataById(dataid);
        return mm;
    }
    
    
    
    
	
	
	
}
