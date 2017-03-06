package com.wynne.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wynne.Serivce.ICet4Loading;

/**
 *<p>Title: </p>
 *<p>Description:用于读取单词信息 </p>
 * @author liweining
 *@date 2017年3月5日 下午5:17:07 
 */
@Controller
@RequestMapping("/cet4")
public class Cet4Controller {
	@Autowired
	private ICet4Loading cet4Loading;
	@RequestMapping("loading")
	public String Add()throws Exception{
		cet4Loading.Add();
		return "success";

	}
}
