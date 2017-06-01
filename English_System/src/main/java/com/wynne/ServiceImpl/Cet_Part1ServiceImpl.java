package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part1Mapper;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Serivce.ICet_Part1Service;
@Service
public class Cet_Part1ServiceImpl implements ICet_Part1Service{

	
	@Autowired
	private Cet4_Part1Mapper cet4_Part1Mapper;
	public int updateCetPart1(Cet4_Part1Custom cet4_Part1Custom) {
		int count=0;
		if(cet4_Part1Custom!=null){
			count=cet4_Part1Mapper.updateByPrimaryKeySelective(cet4_Part1Custom);
		}
		return count;
	}
	public int insert(Cet4_Part1Custom cet4_Part1Custom) {
		return cet4_Part1Mapper.insertSelective(cet4_Part1Custom);
	}

}
