package com.wynne.Exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 *<p>Title:自定义全局异常处理器 </p>
 *<p>Description: 用于处理全局异常，这个使用比较多</p>
 * @author liweining
 *@date 2017年3月4日 下午3:05:36 
 */
public class CustomerExceptionResolver implements HandlerExceptionResolver {


	public ModelAndView resolveException(HttpServletRequest request, 
			HttpServletResponse response, Object handler,Exception ex) {

		ex.printStackTrace();
		CustomException customerException=null;

		//如果抛出异常时系统自定义的异常则直接转换
		if(ex instanceof CustomException){
			customerException=(CustomException) ex;
		}else{
			//如果抛出的不是系统自定义的异常则重新构造一个未知错误异常
			//这里我就也有CustomException省事了，实际中应该要再定义一个新的异常
			customerException = new CustomException("系统未知错误！");
		}
		//返回错误信息
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("error_message",customerException.getMessage());
		modelAndView.setViewName("/jsp/error");

		return modelAndView;
	}


}
