package com.wynne.test;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;

public class test2 {
	public static void main(String path[]) throws Exception {
		URL u=new URL("http://route.showapi.com/8-11?&showapi_appid=32694&showapi_sign=f7d970775085457caea97eb246ea2409");
		InputStream in=u.openStream();
		System.out.println(in);
		ByteArrayOutputStream out=new ByteArrayOutputStream();
		try {
			byte buf[]=new byte[1024];
			int read = 0;
			while ((read = in.read(buf)) > 0) {
				out.write(buf, 0, read);
			}
		}  finally {
			if (in != null) {
				in.close();
			}
		}
		byte b[]=out.toByteArray( );
		
		System.out.println(new String(b,"utf-8"));
	}
}
