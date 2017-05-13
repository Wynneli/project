package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part3CMapper;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Serivce.ICet_Part3CService;
@Service
public class Cet_Part3CServiceImpl implements ICet_Part3CService{

	@Autowired
	private Cet4_Part3CMapper cet4_Part3CMapper;


	public int updatePart3C(Cet4_Part3C cet4_Part3C) {
		int count=0;
		if(cet4_Part3C!=null){
			count=cet4_Part3CMapper.updateByPrimaryKeySelective(cet4_Part3C);
		}
		return count;
	}

}
