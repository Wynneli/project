package com.wynne.Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.wynne.Entity.Download;

public interface DownloadMapper {
	int deleteByPrimaryKey(Integer fileid);

	int insert(Download record);

	int insertSelective(Download record);

	Download selectByPrimaryKey(Integer fileid);

	List<Download> selectAllOption(String filetype);

	List<Download> selectAll();

	int updateByPrimaryKeySelective(Download record);

	int updateByPrimaryKey(Download record);

	List<Download> selectAllOption2(@Param("filetype") String filetype,@Param("filetypes") String filetypes);
}