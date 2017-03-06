package com.wynne.test;

import java.net.URL;

import com.show.api.ShowApiRequest;

public class test {
	public static void main(String path[]) throws Exception {
//		URL u=new URL("http://route.showapi.com/8-11?&showapi_appid=32694&showapi_sign=f7d970775085457caea97eb246ea2409");
		String res=new ShowApiRequest("http://route.showapi.com/8-11","32694","f7d970775085457caea97eb246ea2409")
		           .addTextPara("name","大学英语四级")
		           .post();
		System.out.println(res);
	}
}
