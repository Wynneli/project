package com.wynne.Filter;

import java.io.IOException;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.wynne.Entity.Admin;
import com.wynne.Entity.UserCustom;
import com.wynne.Serivce.IUserService;
public class AuthFilter implements Filter{

	@Autowired
	private IUserService userService;

	private static final String INDEXJSP="/English_System/";

	private static final String INDEXJSP2="/English_System/index.jsp";

	private static final String LOGINJSP="/English_System/Page/login/Login2.jsp";

	private static final String REGISTERJSP="/English_System/Page/login/register.jsp";

	private static final String ADMINMANIGE="/English_System/Page/admin4/admin.jsp";

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request2=(HttpServletRequest)request;
		HttpServletResponse response2=(HttpServletResponse)response;
		HttpSession session=request2.getSession();
		String currentURL=request2.getRequestURI();
		if(currentURL.equals(INDEXJSP)||currentURL.equals(INDEXJSP2)){
			request2.getRequestDispatcher("/Page/Return.jsp").forward(request2,response2);
		}
		Admin admin=(Admin)session.getAttribute("admin");
		
		if(admin==null){
			if(currentURL.equals(ADMINMANIGE)){
				request2.getRequestDispatcher("/Page/admin4/adminLogin.jsp").forward(request2,response2);
			}
		}
		chain.doFilter(request2, response2);

	}

	public void destroy() {

	}

}
