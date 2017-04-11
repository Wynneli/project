package com.wynne.Utils;

public class HandleCet {
  public static String handleCetId(String CetId){
	  int count=Integer.parseInt(CetId.substring(5,CetId.length()));
	  String cet=CetId.substring(0,5);
	  count=count+1;
	  String newstring=cet+String.valueOf(count);
	  return newstring;
  }
}
