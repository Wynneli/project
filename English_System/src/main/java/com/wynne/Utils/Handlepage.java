package com.wynne.Utils;

public class Handlepage {
	public static int handlepage(int page){
		int count=0;
		if(page<20){
			count=1;
		}else{
			if(page%20==0){
				count=page/20;
			}else{
				count=page/20;
				count=count+1;
			}
		}
		return count;
	}

	public static int handlepageoff(int page){
		int count=0;
		if(page>1){
			count=(page-1)*20;
		}
		return count;
	}
	
	public static int handlepagebyCetid(String Cetid){
		int count=0;
		int page=0;
		page=Integer.parseInt(Cetid.substring(5,Cetid.length()));
		if(page>10){
			count=page/10*10;
		}
		return count;
	} 
}
