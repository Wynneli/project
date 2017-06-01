package com.wynne.Utils;

import java.io.File;

public class deleteFile {
   public static int delete(String path){
	   File file = new File(path);
	   int count=0;
	   if(file.delete()){
		   System.out.println("已经删除文件");
		   count=1;
	   }
	   return count;
   }
}
