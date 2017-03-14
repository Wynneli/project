package com.wynne.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.Cet4_Part1Mapper;
import com.wynne.Dao.Cet4_Part2Mapper;
import com.wynne.Dao.Cet4_Part3AMapper;
import com.wynne.Dao.Cet4_Part3BMapper;
import com.wynne.Dao.Cet4_Part3CMapper;
import com.wynne.Dao.Cet4_Part4Mapper;
import com.wynne.Entity.Cet4_Part1Custom;
import com.wynne.Entity.Cet4_Part2;
import com.wynne.Entity.Cet4_Part2Custom;
import com.wynne.Entity.Cet4_Part3A;
import com.wynne.Entity.Cet4_Part3B;
import com.wynne.Entity.Cet4_Part3C;
import com.wynne.Entity.Cet4_Part4;
import com.wynne.Serivce.ICet4_partService;
@Service("iCet4_part2Service")
public class Cet4_partServiceImpl implements ICet4_partService{
   @Autowired
   private Cet4_Part2Mapper cet4_Part2Mapper;
   @Autowired
   private Cet4_Part1Mapper cet4_Part1Mapper;
   @Autowired
   private Cet4_Part3AMapper cet4_Part3AMapper;
   @Autowired
   private Cet4_Part3BMapper cet4_Part3BMapper;
   @Autowired
   private Cet4_Part3CMapper cet4_Part3CMapper;
   @Autowired 
   private Cet4_Part4Mapper cet4_Part4Mapper;
	public List<Cet4_Part2Custom> find_part2_infoBycet42TestId(String cet42TestId)throws Exception{
		return cet4_Part2Mapper.selectBycet42TestId(cet42TestId);
	}
	public Cet4_Part1Custom find_Cet4_Part1Custom_ByPrimary(String cet4TestId) throws Exception {
		return cet4_Part1Mapper.selectByPrimaryKey(cet4TestId);
	}
	public Cet4_Part3A find_Cet4_Part3A_ByPrimary(String cet4Part3aId) throws Exception {
		return cet4_Part3AMapper.selectByPrimaryKey(cet4Part3aId);
	}
	public Cet4_Part3B find_Cet4_Part3B_ByPrimary(String cet4Part3bId) throws Exception {
		return cet4_Part3BMapper.selectByPrimaryKey(cet4Part3bId);
	}
	public List<Cet4_Part3C> find_Cet4_Part3C_Bycet4PartcIds(String cet4PartcIds) throws Exception {
		return cet4_Part3CMapper.selectBycet4PartcIds(cet4PartcIds);
	}
	public Cet4_Part4 find_Cet4_Part4_ByPrimary(String cet4Part4Id) throws Exception {
		return cet4_Part4Mapper.selectByPrimaryKey(cet4Part4Id);
	}

}
