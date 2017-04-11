package com.wynne.Entity;

/**
 *<p>Title: </p>
 *<p>Description: 分页类</p>
 * @author liweining
 *@date 2017年4月6日 下午4:03:48 
 */
public class PageContent {
	/**
	 * 第几页
	 */
	private int pageIndex;
	/**
	 * 每页显示多少条
	 */
	private int pageSize;
	/**
	 * 分页的开始值
	 */
	private int pageOffset;
	/**
	 * 总共多少条记录
	 */
	private int totalRecord;
	/**
	 * 总共多少页
	 */
	private int totalPage;
	
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageOffset() {
		return pageOffset;
	}
	public void setPageOffset(int pageOffset) {
		this.pageOffset = pageOffset;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
}
