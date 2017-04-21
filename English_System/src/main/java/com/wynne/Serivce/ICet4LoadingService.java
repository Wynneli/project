package com.wynne.Serivce;

import java.util.List;

import com.wynne.Entity.Answer2;
import com.wynne.Entity.Cet4Custom;
import com.wynne.Entity.ProcessCustom;
import com.wynne.Entity.Unknown_WordCustom;

/**
 *<p>Title: </p>
 *<p>Description:有关cet4单词的Service的接口 </p>
 * @author liweining
 *@date 2017年3月9日 下午5:04:32 
 */
public interface ICet4LoadingService {
	public void Add() throws Exception;

	public Cet4Custom Select_cet4_info_ByPrimary(String cet4Id);

	public int countCet4(String cet);

	public List<Cet4Custom> findCet4(int pageOffset);

	public int updateCet4(Cet4Custom cet4Custom);

	public int deleteCet4(String  cet4Id);

	public String findLastCet4Id();

	public int insertCetRecord(Cet4Custom record);


}
