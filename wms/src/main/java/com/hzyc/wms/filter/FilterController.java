package com.hzyc.wms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 在SpringBoot中通过注解注册的方式简单的使用Filter
 * @author chengxi
 */
@WebFilter(urlPatterns = "/page/*", filterName = "myfilter")
public class FilterController implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter初始化中");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    	//不过滤请求
    	
        System.out.println("开始进行过滤处理");
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        
        String uri = request.getRequestURI();
        int lastIndex = uri.lastIndexOf("/");
        String jsp = uri.substring(lastIndex + 1, uri.length());
        System.out.println(jsp);
        if(jsp.contains("login.jsp")) {
	        filterChain.doFilter(servletRequest, servletResponse);
	        return ;
        }
        HttpSession session = request.getSession();
        if(session.getAttribute("user") == null) {
        	//未登录
        	response.sendRedirect("/login.jsp");
        }else {
	        //调用该方法后，表示过滤器经过原来的url请求处理方法
	        filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {
        System.out.println("Filter销毁中");
    }
}