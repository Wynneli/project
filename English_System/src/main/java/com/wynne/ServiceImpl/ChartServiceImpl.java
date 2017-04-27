package com.wynne.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wynne.Dao.ChartMapper;
import com.wynne.Entity.Chart;
import com.wynne.Serivce.IChartService;
@Service
public class ChartServiceImpl implements IChartService{
	@Autowired
	private ChartMapper chartMapper;
	
	public List<Chart> findAll() {
		List<Chart> list=new ArrayList<Chart>();
		list=chartMapper.selectAll();
		
		return list;
	}

}
