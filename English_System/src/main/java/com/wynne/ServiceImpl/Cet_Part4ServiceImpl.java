package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part4Mapper;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Serivce.ICet_Part4Service;
@Service
public class Cet_Part4ServiceImpl implements ICet_Part4Service{
	
  @Autowired
  private Cet4_Part4Mapper cet4_Part4Mapper;
  
	public int updatePart4(Cet4_Part4 cet4_Part4) {
		int count=0;
		if(cet4_Part4!=null){
			count=cet4_Part4Mapper.updateByPrimaryKeySelective(cet4_Part4);
		}
		return count;
	}

}
