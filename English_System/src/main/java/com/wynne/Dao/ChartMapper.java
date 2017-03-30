package com.wynne.Dao;

import com.wynne.Entity.Chart;

public interface ChartMapper {
    int deleteByPrimaryKey(Integer chartId);

    int insert(Chart record);

    int insertSelective(Chart record);

    Chart selectByPrimaryKey(Integer chartId);
    
    Chart selectBychartCetIdAndchartUsername(Chart record);

    int updateByPrimaryKeySelective(Chart record);

    int updateByPrimaryKey(Chart record);
}