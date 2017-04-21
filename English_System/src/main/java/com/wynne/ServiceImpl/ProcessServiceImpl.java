package com.wynne.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.ProcessMapper;
import com.wynne.Entity.ProcessCustom;
import com.wynne.Serivce.IProcessService;
@Service
public class ProcessServiceImpl implements IProcessService{

	@Autowired
	private ProcessMapper processMapper;

	public int insertProcess(ProcessCustom processCustom) {
		int count=0;
		if(processCustom!=null){
			count=processMapper.insertSelective(processCustom);
		}
		return count;
	}


	public int updateProcess(ProcessCustom processCustom) {
		int count=0;
		if(processCustom!=null){
			count=processMapper.updateByPrimaryKeySelective(processCustom);
		}
		return count;
	}


	public ProcessCustom findProcessByUserId(int userid) {
		return processMapper.selectBypUserId(userid);

	}
	

	public ProcessCustom Loading_Cet4(Integer pUserId) {
		return processMapper.selectBypUserId(pUserId);
	}
}
