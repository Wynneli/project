package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part2Mapper;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Serivce.ICet_Part2Service;
@Service
public class Cet_Part2ServiceImpl implements ICet_Part2Service{
	
    @Autowired
    private Cet4_Part2Mapper cet4_Part2Mapper;
    
	public int updatePart2(Cet4_Part2Custom cet4_Part2) {
		int count=0;
		if(cet4_Part2!=null){
			count=cet4_Part2Mapper.updateByPrimaryKeySelective(cet4_Part2);
		}
		return count;
	}

	public int insert(Cet4_Part2Custom cet4_Part2Custom) {
		return cet4_Part2Mapper.insertSelective(cet4_Part2Custom);
	}

}
