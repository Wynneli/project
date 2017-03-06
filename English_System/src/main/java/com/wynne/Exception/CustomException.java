package com.wynne.Exception;

/**
 *<p>Title:一个简单的异常类 </p>
 *<p>Description: 异常处理器</p>
 * @author liweining
 *@date 2017年3月4日 下午2:30:03 
 */
public class CustomException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String error_message;

	public String getError_message() {
		return error_message;
	}

	public CustomException(String error_message) {
		super(error_message);
		this.error_message = error_message;
	}

	public void setError_message(String error_message) {
		this.error_message = error_message;
	}

}
