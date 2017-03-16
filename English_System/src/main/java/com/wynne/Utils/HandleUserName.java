package com.wynne.Utils;

public class HandleUserName {
	public static String handle(String username){
		int index=username.lastIndexOf("：");
		username=username.substring(index+1, username.length()).trim();
		return username;
	}
}
