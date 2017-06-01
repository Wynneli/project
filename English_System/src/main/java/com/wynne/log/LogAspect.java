package com.wynne.log;


import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
import com.wynne.Entity.User;
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

	@Pointcut("execution(* com.wynne.ServiceImpl.CommentServiceImpl.insertCommentSelective(..))")
	private  void commentLog() {}

	@Pointcut("execution(* com.wynne.ServiceImpl.*.Add_UnknownWord(..))")
	private  void Add_UnknownWord() {}

	@Pointcut("execution(* com.wynne.ServiceImpl.*.*Process(..))")
	private  void process() {}

	@Pointcut("execution(* com.wynne.ServiceImpl.*.Remove_UnknownWord(..))")
	private  void remove_UnknownWord() {}

	@Pointcut("execution(* com.wynne.ServiceImpl.CommentServiceImpl.update*(..))")
	private  void UpdatePointcut() {}
	
	@Pointcut("execution(* com.wynne.ServiceImpl.Cet4_partServiceImpl.find_Cet4_Part1Custom_ByPrimary(..))")
	private  void test() {}
	
	@Pointcut("execution(* com.wynne.ServiceImpl.Cet4_partServiceImpl.findByPrimaryKey(..))")
	private  void testSave() {}

//		@AfterReturning(value="UpdatePointcut())",returning="returnVal")
//		public void updateLog(JoinPoint joinPoint,Object returnVal)throws Throwable {
//			LogCustom logCustomer=new LogCustom();
//			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
//			logCustomer.setUserid(Integer.parseInt(request.getParameter("userid")));
//			logCustomer.setUsername(request.getParameter("username"));
//			logCustomer.setUseroperate("更新用户信息");
//			logCustomer.setTime(SystemTime.systime());
//			Boolean flag=logservice.insertLog(logCustomer); 
//			
//		}

		@AfterReturning(value="process())",returning="returnVal")
		public void process(JoinPoint joinPoint,Object returnVal)throws Throwable {
			HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
			HttpSession session=request.getSession();
			LogCustom logCustomer=new LogCustom();
			User user=(User)session.getAttribute("user");
			logCustomer.setUserid(user.getUserid());
			logCustomer.setUsername(user.getUsername());
			logCustomer.setUseroperate("更新进度信息");
			logCustomer.setTime(SystemTime.systime());
			logservice.insertLog(logCustomer);
		}


		@AfterReturning(value="remove_UnknownWord())",returning="returnVal")
		public void updateLog(JoinPoint joinPoint,Object returnVal)throws Throwable {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
			HttpSession session=request.getSession();
			LogCustom logCustomer=new LogCustom();
			User user=(User)session.getAttribute("user");
			logCustomer.setUserid(user.getUserid());
			logCustomer.setUsername(user.getUsername());
			logCustomer.setUseroperate("移除陌生词汇");
			logCustomer.setTime(SystemTime.systime());
			logservice.insertLog(logCustomer);
		}

		@AfterReturning(value="Add_UnknownWord())",returning="returnVal")
		public void Add_UnknownWord(JoinPoint joinPoint,Object returnVal)throws Throwable {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
			HttpSession session=request.getSession();
			LogCustom logCustomer=new LogCustom();
			User user=(User)session.getAttribute("user");
			logCustomer.setUserid(user.getUserid());
			logCustomer.setUsername(user.getUsername());
			logCustomer.setUseroperate("增加默认词汇");
			logCustomer.setTime(SystemTime.systime());
			logservice.insertLog(logCustomer);
		}

	@AfterReturning(value="commentLog())",returning="returnVal")
	public void insertcommentLog(JoinPoint joinPoint,Object returnVal)throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		LogCustom logCustomer=new LogCustom();
		User user=(User)session.getAttribute("user");
		logCustomer.setUserid(user.getUserid());
		logCustomer.setUsername(user.getUsername());
		logCustomer.setUseroperate("评论");
		logCustomer.setTime(SystemTime.systime());
		logservice.insertLog(logCustomer); 
	}
	
//	@AfterReturning(value="test())",returning="returnVal")
//	public void test(JoinPoint joinPoint,Object returnVal)throws Throwable {
//		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
//		HttpSession session=request.getSession();
//		LogCustom logCustomer=new LogCustom();
//		User user=(User)session.getAttribute("user");
//		logCustomer.setUserid(user.getUserid());
//		logCustomer.setUsername(user.getUsername());
//		logCustomer.setUseroperate("试题测试");
//		logCustomer.setTime(SystemTime.systime());
//		logservice.insertLog(logCustomer); 
//	}
	

	@AfterReturning(value="testSave())",returning="returnVal")
	public void testSave(JoinPoint joinPoint,Object returnVal)throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		HttpSession session=request.getSession();
		LogCustom logCustomer=new LogCustom();
		User user=(User)session.getAttribute("user");
		logCustomer.setUserid(user.getUserid());
		logCustomer.setUsername(user.getUsername());
		logCustomer.setUseroperate("查看答案");
		logCustomer.setTime(SystemTime.systime());
		logservice.insertLog(logCustomer); 
	}
}
