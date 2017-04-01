package com.wynne.testExample;

import java.util.Calendar;
import java.util.Date;

import org.junit.Test;

import com.wynne.Utils.SystemTime;
import com.wynne.Utils.TranferTime;

public class DateTest {
	@Test
	public void test(){
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int date = c.get(Calendar.DATE); 
		int hour = c.get(Calendar.HOUR_OF_DAY); 
		int minute = c.get(Calendar.MINUTE); 
		int second = c.get(Calendar.SECOND); 
		System.out.println(year + "/" + month + "/" + date + " " +hour + ":" +minute + ":" + second); 

	}
	@Test
	public void test1(){
		
		System.out.println(SystemTime.systime());
	}

	@Test
	public void test2(){
		Date time=new Date();
		System.out.println(time);
		System.out.println(TranferTime.change(time));
	}
}
