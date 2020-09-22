package com.tianglhtg.bxy.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
 
import org.apache.commons.codec.binary.Base64;
@Controller
public class PageController {
	@RequestMapping(value="")
	public ModelAndView loginMenu(HttpServletRequest req)
	{
		
		ModelAndView mv = new ModelAndView("login");
		
		return mv;
	}
	
	
	@RequestMapping(value="maintenance/edit")
	public ModelAndView maintenanceEdit(HttpServletRequest req)
	{
		String dataid = req.getParameter("dataid");
		ModelAndView mv = new ModelAndView("maintenance/edit");
		mv.addObject("dataid", dataid);
		return mv;
	}
	
	
	@RequestMapping(value="maintenance/add")
	public ModelAndView maintenanceAdd(HttpServletRequest req)
	{
		
		ModelAndView mv = new ModelAndView("maintenance/add");
	
		return mv;
	}
	
	
	@RequestMapping(value="menupage/menu")
	public ModelAndView menupageMenu(HttpServletRequest req) throws Exception
	{
		String username = req.getParameter("username");
		String uuidindex = req.getParameter("uuidindex");
		
		username = java.net.URLDecoder.decode(username, "UTF-8");
		uuidindex = new String(Base64.decodeBase64(uuidindex));
		System.out.println(username);
		System.out.println(uuidindex);
		ModelAndView mv = new ModelAndView("menupage/menu");
		mv.addObject("username", username);
		mv.addObject("uuidindex", uuidindex);
		return mv;
	}
	
	@RequestMapping(value="maintenance/index")
	public ModelAndView maintenanceIndex(HttpServletRequest req) throws Exception
	{
		String username = req.getParameter("username");
		String uuidindex = req.getParameter("uuidindex");
		username = java.net.URLDecoder.decode(username, "UTF-8");
		
		uuidindex = new String(Base64.decodeBase64(uuidindex));
		
		
		System.out.println(username);
		System.out.println(uuidindex);
		ModelAndView mv = new ModelAndView("maintenance/index");
		mv.addObject("username", username);
		mv.addObject("uuidindex", uuidindex);
		return mv;
	}
	
	
	  public static String enAndDeCode(String str) throws Exception {
	        byte[] byteArray = decryptBASE64(str);
	        return new String(byteArray);
	  }
	  
	  /**
	     * BASE64解密
	     * @throws Exception
	     */
	    public static byte[] decryptBASE64(String key) throws Exception {
	        return (new BASE64Decoder()).decodeBuffer(key);
	    }
	 
	    /**
	     * BASE64加密
	     */
	    public static String encryptBASE64(byte[] key) throws Exception {
	        return (new BASE64Encoder()).encodeBuffer(key);
	    }

}
