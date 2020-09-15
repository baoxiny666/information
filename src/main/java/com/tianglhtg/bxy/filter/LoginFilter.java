package com.tianglhtg.bxy.filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {
 
    public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
            throws IOException, ServletException {
        // TODO Auto-generated method stub
        HttpServletRequest request = (HttpServletRequest)arg0;
        HttpServletResponse response = (HttpServletResponse)arg1;
        HttpSession session = request.getSession();
        

        if(session.getAttribute("LOGIN_USER")==null && request.getRequestURI().indexOf("/user/checklogin.do") == -1){
            // 没有登录
            response.sendRedirect(request.getContextPath()+"/jsp/login.jsp");
            return;
        }else{
            // 已经登录，继续请求下一级资源（继续访问）
            arg2.doFilter(arg0, arg1);
        }
    }
 
    public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
    }
     
    public void destroy() {
        // TODO Auto-generated method stub
    }
}
