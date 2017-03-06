package com.wynne.ServiceImpl;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4Mapper;
import com.wynne.Entity.Cet4Custom;
import com.wynne.Serivce.ICet4Loading;

@Service("cet4LoadingService")
public class Cet4LoadingServiceImpl  implements ICet4Loading{
	
	@Autowired
	private Cet4Mapper cet4Mapper;
	private static  final String cet4="cet4_";
	private static  final String cet6="cet6_"; 
	private static  final String zero="0000";
	
	
	public void Add() throws Exception {
		BufferedReader reader =null;
		String line=null;
		int count=1;
		String filepath="C:\\Users\\liweining\\Desktop\\2.txt";
		//		reader=new BufferedReader(new InputStreamReader(in));
		reader=new BufferedReader(new InputStreamReader(new FileInputStream(filepath), "utf-8"));
		line=reader.readLine();
		while(line!=null){
			if(line.contains("/")){
				System.out.println(count);
				int begin=line.indexOf("/");
				String cet4_vocabulary=line.substring(0, begin);
				System.out.println(cet4_vocabulary);
				int end=line.lastIndexOf("/");
				System.out.println("begin:"+begin+"\t"+"end:"+end+"\t"+"长度："+line.length());
				String cet4_pronunciation=line.substring(begin,end+1).trim();
				System.out.println(cet4_pronunciation);
				String meaning =line.substring(end+1,line.length());
				System.out.println(meaning);
				System.out.println(line);
				System.out.println("执行到"+count);

				//把读到的单词写入数据库中
				Cet4Custom cet4Custom=new Cet4Custom();
				String aString=String.valueOf(count);
				String bString=zero.substring(0,4-aString.length())+aString;
				String cet4_id=cet4+bString;
				System.out.println(cet4_id);
				cet4Custom.setCet4Id(cet4_id);
				cet4Custom.setCet4Vocabulary(cet4_vocabulary);
				cet4Custom.setCet4Pronunciation(cet4_pronunciation);
				cet4Custom.setCet4Meaning(meaning);
				cet4Mapper.insert(cet4Custom);
			}
			count++;
			line=reader.readLine();
		}
		reader.close();
		
	}

}
