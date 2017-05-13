package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part3AMapper;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Serivce.ICet_Part3AService;
@Service
public class Cet_Part3AServiceImpl implements ICet_Part3AService{

	@Autowired
	private Cet4_Part3AMapper cet4_Part3AMapper;
	
	public int updateCetPart3A(Cet4_Part3A cet4_Part3A) {
		int count=0;
		if(cet4_Part3A!=null){
			count=cet4_Part3AMapper.updateByPrimaryKeySelective(cet4_Part3A);
		}
		return count;
	}

}
