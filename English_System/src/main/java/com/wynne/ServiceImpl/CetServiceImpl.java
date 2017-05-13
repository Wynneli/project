package com.wynne.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.CetMapper;
import com.wynne.Entity.Cet;
import com.wynne.Serivce.ICetService;
import com.wynne.Utils.HandleNull;
@Service
public class CetServiceImpl implements  ICetService{

	@Autowired
	private CetMapper cetMapper;

	public List<Cet> findCetCondition(String cet) {
		List<Cet> cet_list=new ArrayList<Cet>();
		if(!cet.equals("")){
			cet_list=cetMapper.selectCondition(cet);
		}
		return cet_list;
	}

	public int findCetId(String cetid) {
		int count=0;
		if(!cetid.equals("")){
			count=cetMapper.selectCetId(cetid);
		}
		return count;
	}

	public int findCetInfo(String cetInfo) {
		int count=0;
		if(!cetInfo.equals("")){
			count=cetMapper.selectCetInfo(cetInfo);
		}
		return count;
	}

	public int insert(Cet cet) {
		int count=0;
		if(cet!=null){
			count=cetMapper.insertSelective(cet);
		}
		return count;
	}

	public Cet findCet(String cetid) {
		Cet cet=new Cet();
		if(!cetid.equals("")){
			cet=cetMapper.sletctCet(cetid);
		}
		cet=HandleNull.HandleCet(cet);
		return cet;
	}

	public int delete(int cetPrimary) {
		return cetMapper.deleteByPrimaryKey(cetPrimary);
	}

	public Cet findByPrimaryKey(int cetPrimary) {
		Cet cet=new Cet();
		if(cetPrimary>0){
			cet=cetMapper.selectByPrimaryKey(cetPrimary);
		}
		return cet;
	}

}
