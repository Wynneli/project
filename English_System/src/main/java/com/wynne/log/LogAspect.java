package com.wynne.log;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.wynne.Entity.Log;
import com.wynne.Entity.LogCustom;
import com.wynne.Serivce.ILogService;
import com.wynne.Serivce.IUserService;
import com.wynne.Utils.SystemTime;
/**
 *<p>Title:记录日志类 </p>
 *<p>Description: 记录日志</p>
 * @author liweining
 *@date 2017年3月3日 下午2:03:20 
 */
@Component("myAspect")
@Aspect
public class LogAspect {
	@Autowired
	private ILogService logservice;

	@Pointcut("execution(* update*(..))")
	//execution(* com.wynne.ServiceImpl.*update*(..))
	private  void update_pointcut1() {}
	
	@Pointcut("execution(* com.wynne.ServiceImpl.*.*(..))")
	//execution(* com.wynne.ServiceImpl.*.*(..))
	private  void update_pointcut2() {}

	@Pointcut(" update_pointcut2() &&  update_pointcut1()")
	private  void update_pointcut() {}
	
	@Pointcut("execution(* com.wynne.ServiceImpl.*.update*(..))")
	private  void UpdatePointcut() {}

	@AfterReturning(value="UpdatePointcut())",returning="returnVal")
	public void updateLog(JoinPoint joinPoint,Object returnVal)throws Throwable {
		LogCustom logCustomer=new LogCustom();
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		logCustomer.setUserid(Integer.parseInt(request.getParameter("userid")));
		logCustomer.setUsername(request.getParameter("username"));
		logCustomer.setUseroperate("更新用户信息");
		logCustomer.setTime(SystemTime.systime());
		Boolean flag=logservice.insertLog(logCustomer);
		if(flag){
			System.out.println("update成功!");
		}
	}
}
