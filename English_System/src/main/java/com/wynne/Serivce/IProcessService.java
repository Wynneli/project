package com.wynne.Serivce;

import com.wynne.Entity.ProcessCustom;

public interface IProcessService {

	public ProcessCustom Loading_Cet4(Integer pUserId);

	public int insertProcess(ProcessCustom processCustom);

	public int updateProcess(ProcessCustom processCustom);

	public ProcessCustom findProcessByUserId(int userid);
}
