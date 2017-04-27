package com.wynne.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthFilter implements Filter{
	private static final String INDEXJSP=" /English_System/";

	private static final String INDEXJSP2=" /English_System/index.jsp";

	private static final String LOGINJSP="/English_System/Page/login/Login2.jsp";

	private static final String REGISTERJSP="/English_System/Page/login/register.jsp";

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request2=(HttpServletRequest)request;
		HttpServletResponse response2=(HttpServletResponse)response;
		String currentURL=request2.getRequestURI();
		System.out.println(currentURL);
//		if(currentURL.equals(LOGINJSP)||currentURL.equals(REGISTERJSP)){
//		}else{
//			System.out.println("不能继续往下执行！，您好没有登录");
//		    response2.sendRedirect(request2.getContextPath() + "/Page/login/Login2.jsp");  
//			return ;
//		}
		chain.doFilter(request2, response2);
		
	}

	public void destroy() {

	}

}
