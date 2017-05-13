package com.wynne.Utils;

import java.io.File;

public class fileRename {

	private static final String realpath="G:/毕设/";

	public static Boolean rename(String path,String renamepath){
		Boolean b=true;
		File file=new File(realpath+path.substring(6,path.length()));
		int repath=renamepath.lastIndexOf("/")+1;
		String name=file.getAbsolutePath();
		String repathname=name.substring(0,repath)+renamepath.substring(repath, renamepath.length());
		System.out.println(name.substring(0,repath));
		System.out.println(renamepath.substring(repath, renamepath.length()));
		System.out.println(repathname);
		b= file.renameTo(new File(repathname));
		return b;
	}
}
