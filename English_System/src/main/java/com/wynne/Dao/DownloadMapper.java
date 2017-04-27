package com.wynne.Dao;

import com.wynne.Entity.Download;

public interface DownloadMapper {
    int deleteByPrimaryKey(Integer fileid);

    int insert(Download record);

    int insertSelective(Download record);

    Download selectByPrimaryKey(Integer fileid);

    int updateByPrimaryKeySelective(Download record);

    int updateByPrimaryKey(Download record);
}