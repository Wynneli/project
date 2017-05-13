package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part3BMapper;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Serivce.ICet_Part3BService;
@Service
public class Cet_Part3BServiceImpl implements ICet_Part3BService{

	@Autowired
	private Cet4_Part3BMapper cet4_Part3BMapper;

	public int updateCetPart3B(Cet4_Part3B cet4_Part3B) {
		int count=0;
		if(cet4_Part3B!=null){
			count=cet4_Part3BMapper.updateByPrimaryKeySelective(cet4_Part3B);
		}
		return count;
	}

}
