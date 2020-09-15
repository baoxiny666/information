package com.tianglhtg.bxy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor  implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		   // 在拦截点执行前拦截，如果返回true则不执行拦截点后的操作（拦截成功）
		
		// 返回false则不执行拦截
        String currentUserName = (String)request.getSession().getAttribute("LOGIN_USER");
        //String uri = request.getRequestURI(); // 获取登录的uri，这个是不进行拦截的
        //if(session.getAttribute("LOGIN_USER")!=null || uri.indexOf("system/login")!=-1) {// 说明登录成功 或者 执行登录功能
        if(currentUserName!=null) {
            // 登录成功不拦截
            return true;
        }else {
            // 拦截后进入登录页面
            //执行这里表示用户身份需要验证，跳转到登录界面
            //request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
        	response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
            return false;
        }
        
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

    
}
