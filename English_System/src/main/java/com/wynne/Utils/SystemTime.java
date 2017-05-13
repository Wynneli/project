package com.wynne.Utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class SystemTime {
	public static String systime(){
		Calendar c=Calendar.getInstance(); 
		String year =SystemTime.add( String.valueOf(c.get(Calendar.YEAR))); 
		String month = SystemTime.add(String.valueOf(c.get(Calendar.MONTH))); 
		String date = SystemTime.add(String.valueOf(c.get(Calendar.DATE))); 
		String hour = SystemTime.add(String.valueOf(c.get(Calendar.HOUR_OF_DAY))); 
		String minute =SystemTime.add(String.valueOf( c.get(Calendar.MINUTE))); 
		String second =SystemTime.add( String.valueOf(c.get(Calendar.SECOND))); 
		String time=year+"-"+month+"-"+date+"  "+hour+":"+minute+":"+second ;
		return time;
	}

	public static String add(String str){
		if(str.length()<2){
			str="0"+str;
		}
		return str;
	}

	public static String getTime(){
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return  sdf.format(d);
	}
	
	public static String getTime2(){
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		return  sdf.format(d);
	}
	
	public static String getTimeToFile(){
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		return  sdf.format(d);
	}

}
