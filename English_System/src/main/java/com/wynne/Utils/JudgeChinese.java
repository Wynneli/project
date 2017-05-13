package com.wynne.Utils;

public class JudgeChinese {
	public static boolean isChinese(char c) {  
		return c >= 0x4E00 &&  c <= 0x9FA5;// 根据字节码判断  
	}  
	// 判断一个字符串是否含有中文  
	public static boolean isChinese(String str) { 
		int count=0;
		Boolean b=false;
		int length=str.length();
		for (char c : str.toCharArray()) {  
			if (isChinese(c)) {
				count++;
				// 有一个中文字符就返回  
			}
		}  
		if(count==length){
			b=true;
		}
		return b;  
	}  
}
