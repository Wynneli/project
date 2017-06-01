package com.wynne.Utils;

import java.io.File;

public class fileRename {

	private static final String realpath="G:/毕设/temp/";

	public static Boolean rename(String path,String filepath){
		System.out.println(path);
		Boolean b=true;
		File file=new File(realpath+path.substring(6,path.length()));
		String name=file.getAbsolutePath();
		int index=name.lastIndexOf("\\");
		String rename=name.substring(0, index+1);
		System.out.println(name);
		String repathname=rename+filepath;
		System.out.println(repathname);
		b= file.renameTo(new File(repathname));
		return b;
	}
}
